# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

GEM_NAME = 'collection_select'
GEM_NAME_CLASS = GEM_NAME.split('_').map(&:capitalize).join
FULL_GEM_NAME = "administrate-field-#{GEM_NAME}"

Gem::Specification.new do |gem|
  gem.name          = FULL_GEM_NAME
  gem.version       = '0.3.0'
  gem.authors       = ['Jon Kinney']
  gem.email         = ['jon@headway.io']

  gem.summary       = %(Custom Administrate field #{GEM_NAME})
  gem.description   = gem.summary
  gem.homepage      = "http://github.com/headwayio/#{FULL_GEM_NAME}"
  gem.license       = 'MIT'

  gem.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  gem.bindir        = 'exe'
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rake',
  gem.add_development_dependency 'rspec'
  gem.add_dependency 'administrate'
  gem.add_dependency 'rails'
end
