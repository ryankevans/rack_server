# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack_server/version'

Gem::Specification.new do |spec|
  spec.name        = 'rack_server'
  spec.version     = RackServer::VERSION

  spec.summary     = 'A rack server wrapper for Procfiles.'
  spec.description = 'Chooses an appropriate rack server for the current environment.'
  spec.authors     = ['Ryan K. Evans']
  spec.email       = 'ryankevans@server.fake'
  spec.homepage    = 'https://github.com/ryankevans/rack_server'
  spec.license     = 'HK'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
