# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "alephant/logger/cloudwatch/version"

Gem::Specification.new do |spec|
  spec.name          = "alephant-logger-cloudwatch"
  spec.version       = Alephant::Logger::Cloudwatch::VERSION
  spec.authors       = ["BBC News"]
  spec.email         = ["D&ENewsFrameworksTeam@bbc.co.uk"]
  spec.summary       = %q{Cloudwatch driver for Alephant::Logger}
  spec.description   = %q{Cloudwatch driver for Alephant::Logger}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3"
  spec.add_runtime_dependency "aws-sdk-cloudwatch"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake-rspec"
  spec.add_development_dependency "rspec-nc"
end
