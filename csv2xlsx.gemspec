# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csv2xlsx/version'

Gem::Specification.new do |spec|
  spec.name          = "csv2xlsx"
  spec.version       = Csv2Xlsx::VERSION
  spec.authors       = ["Ryan Duryea"]
  spec.email         = ["aguynamedryan@gmail.com"]
  spec.description   = 'Creates an Excel file from one or more CSV files, one sheet per file'
  spec.summary       = 'Create an Excel file from one or more CSV files'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.8.7'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rake"
  spec.add_dependency "axlsx"
end
