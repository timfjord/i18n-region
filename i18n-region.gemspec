# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i18n/region/version'

Gem::Specification.new do |spec|
  spec.name          = 'i18n-region'
  spec.version       = I18n::Region::VERSION
  spec.authors       = ['Tim Masliuchenko']
  spec.email         = ['insside@gmail.com']

  spec.summary       = 'Region support for i18n ruby gem'
  spec.description   = 'Region support for i18n ruby gem'
  spec.homepage      = 'https://github.com/timsly/i18n-region'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'i18n'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
