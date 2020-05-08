# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nonnative/version'

Gem::Specification.new do |spec|
  spec.name          = 'nonnative'
  spec.version       = Nonnative::VERSION
  spec.authors       = ['Alex Falkowski']
  spec.email         = ['alexrfalkowski@gmail.com']

  spec.summary       = 'Allows you to keep using the power of ruby to test other systems'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/alexfalkowski/nonnative'
  spec.license       = 'Unlicense'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'cucumber', '~> 3.1', '>= 3.1.2'
  spec.add_dependency 'rspec-expectations', '~> 3.9', '>= 3.9.1'
  spec.add_dependency 'semantic_logger'
  spec.add_dependency 'sinatra', '~> 2.0', '>= 2.0.8.1'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec-benchmark', '~> 0.6.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'solargraph'
end
