# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "boxen-module-maker"
  gem.homepage = "https://github.com/petems/boxen-module-maker/"
  gem.license = "MIT"
  gem.summary = 'Tool to make new boxen modules easily'
  gem.description = 'Get your boxen modules up and running easily'
  gem.email = "p.morsou@gmail.com"
  gem.authors = ["Peter M Souter"]
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.rspec_opts = '--color --format=documentation -I lib -I spec'
  spec.pattern = "spec/**/*_spec.rb"
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.rspec_opts = '-I lib -I spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => [:spec]

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "hello-gem #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
