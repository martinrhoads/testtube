# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'testtube/version'

Gem::Specification.new do |spec|
  spec.name          = "testtube"
  spec.version       = TestTube::VERSION
  spec.authors       = ["Martin Rhoads"]
  spec.email         = ["martinrhoads@gmail.com"]
  spec.description   = %q{testtube helps you create test environments}
  spec.summary       = %q{testtube helps you create test environments}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
