# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inventoryfile/version'

Gem::Specification.new do |spec|
  spec.name          = "inventoryfile"
  spec.version       = Inventoryfile::VERSION
  spec.authors       = ["Hiroaki Sano"]
  spec.email         = ["hiroaki.sano.9stories@gmail.com"]

  spec.summary       = %q{inventoryfile. A parser for ansible inventory file.}
  spec.description   = %q{inventoryfile. A parser for ansible inventory file which is an INI like formatted file.}
  spec.homepage      = "https://github.com/hiroakis/inventoryfile"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
