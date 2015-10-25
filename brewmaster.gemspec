# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'brewmaster/version'

Gem::Specification.new do |gem|
  gem.name = "brewmaster"
  gem.version = Brewmaster::VERSION
  gem.platform = Gem::Platform::RUBY
  gem.authors = ["Boris Huskic"]
  gem.email = ["bhuskic@gmail.com"]
  gem.description = "Keep records of favorite beer recipes, creation process and remarks..."
  gem.summary = "Manage beer recipe creation"
  gem.homepage = "http://github.com/bhuskic/brewmaster"

  gem.files = `git ls-files`.split($/)
  gem.test_files = gem.files.grep(%r{^(test/spec/features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec",     ">= 3.0.0"
  gem.add_development_dependency "bundler",   ">= 1.10.6"
  gem.add_development_dependency "rake",      ">= 10.4.2"
end
