# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'datamuse/version'

Gem::Specification.new do |spec|
  spec.name          = "datamuse"
  spec.version       = Datamuse::VERSION
  spec.authors       = ["nodanaonlyzuul"]
  spec.email         = ["beholdthepanda@gmail.com"]
  spec.licenses      = ['MIT']
  spec.summary       = %q{Ruby Library for Datamuse's API}
  spec.description   = %q{Ruby Library for Datamuse's API (http://www.datamuse.com/api/) developed by me, not datamuse.}
  spec.homepage      = "https://github.com/nodanaonlyzuul/datamuse"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'http',        '~> 2.0'
  spec.add_dependency 'addressable', '~> 2.4'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'pry',     '~> 0.10.4'
end
