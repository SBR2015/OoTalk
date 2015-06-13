# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ootalk/version'

Gem::Specification.new do |spec|
  spec.name          = 'OoTalk'
  spec.version       = OoTalk::VERSION
  spec.authors       = ['SBR2015']
  spec.email         = ['SBR2015@example.com']

  spec.summary       = 'This is OoTalk.'
  spec.description   = 'Programming in Multiple Mother tongues.'
  spec.homepage      = 'https://github.com/SBR2015/OoTalk'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
  else
    fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'i18n'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'travis'
end
