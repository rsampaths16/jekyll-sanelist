# frozen_string_literal: true

require_relative 'lib/jekyll/sanelist/version'

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-sanelist'
  spec.version       = Jekyll::Sanelist::VERSION

  spec.authors       = ['Sampath Sukesh Ravolaparthi']
  spec.email         = ['rsampaths16@gmail.com']

  spec.summary       = 'Human oriented lists filter for Jekyll'
  spec.description   = 'This plugin provides simple liquid filters to transform a list into a human oriented list'
  spec.homepage      = 'https://rsampaths16.github.io/jekyll-sanelist'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/rsampaths16/jekyll-sanelist'
  spec.metadata['changelog_uri']   = 'https://github.com/rsampaths16/jekyll-sanelist/blob/master/CHANGELOG.md'

  spec.required_ruby_version = '>= 2.7.0'

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'liquid', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.2'
  spec.add_development_dependency 'rubocop', '~> 1.13'
end
