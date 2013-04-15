$:.push File.expand_path("../lib", __FILE__)

require 'boxen-module-maker/version'

Gem::Specification.new do |spec|
  spec.name = 'boxen-module-maker'
  spec.version = BoxenModuleMaker::Version::STRING
  spec.platform = Gem::Platform::RUBY
  spec.authors = ['Peter M Souter']
  spec.email = ['p.morsou@gmail.com']
  spec.summary = 'Tool to make new boxen modules easily'
  spec.description = 'Get your boxen modules up and running easily'
  spec.homepage    = 'https://github.com/petems/boxen-module-maker'
  spec.license = 'MIT'

  spec.add_development_dependency 'rspec'

  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  spec.require_path = 'lib'
end