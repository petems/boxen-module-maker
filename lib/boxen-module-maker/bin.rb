require 'fileutils'
require 'git'
require 'erb'

class BoxenModuleMaker
  class Bin

    def initialize(args)
      @args = args
      @target_dir = "puppet-#{@args[0]}"
      @application_name = args[0]
    end

    def run
      if @args[0].nil?
        abort "boxen-module-maker: Please specify the name of the module you wish to make"
      elsif @args.length > 1
        abort "boxen-module-maker: Too many arguments, one at a time please."
      end

      module_name = "puppet-#{@args[0]}"
      if File.exists?(module_name)
        warn "boxen-module-maker: [SKIPPING] '#{module_name}' already exists"
        return 1
      elsif File.exists?(module_name.downcase)
        warn "boxen-module-maker: [SKIPPING] '#{module_name.downcase}' exists, which could conflict with `#{module_name}'"
        return 1
      else
        puts "boxen-module-maker: [CREATE FOLDER] Making '#{module_name}'"
        create_folder_loud(module_name)
        get_boxen_template(module_name)
        return 0
      end
    end

    def get_boxen_template(target_dir)
      Dir.chdir(target_dir) do
        begin
          @repo = Git.init()
        rescue Git::GitExecuteError => e
          raise GitInitFailed, "Encountered an error during gitification. Maybe the repo already exists, or has already been pushed to?"
        end

        @repo.add_remote('template', 'https://github.com/boxen/puppet-template.git')
        @repo.remote('template').fetch
        @repo.checkout('master')

        # Remote remove is broken on ruby-git right now...
        # https://github.com/schacon/ruby-git/pull/42
        # Time for a hacky fix! :D
        cmd = 'git remote remove template'
        value = `#{cmd}`

        begin
          @repo.add('.')
        rescue Git::GitExecuteError => e
          #raise GitAddFailed, "There was some problem adding this directory to the git changeset"
          raise
        end
      end
    end

    def create_folder_loud(folder_name)
      FileUtils.mkdir_p(folder_name)
      $stdout.puts "\tcreate\t#{folder_name}"
    end

  end
end