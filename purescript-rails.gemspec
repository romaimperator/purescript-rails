# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'purescript/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "purescript-rails"
  spec.version       = PureScript::Rails::VERSION
  spec.authors       = ["Daniel Fox"]
  spec.email         = ["romaimperator@gmail.com"]
  spec.summary       = %q{PureScript adapter for the Rails asset pipeline.}
  spec.description   = %q{PureScript adapter for the Rails asset pipeline.}
  spec.homepage      = "https://github.com/romaimperator/purescript-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  s.add_development_dependency 'rails'
end
