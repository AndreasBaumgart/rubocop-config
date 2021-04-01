# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = 'rubocop-config'
  spec.version = '1.0.0'
  spec.authors = ['Andreas Baumgart']
  spec.email = ['andreas@baumgart.software']

  spec.summary = 'My Rubocop config'
  spec.description = 'My Rubocop config 👮‍'
  spec.homepage = 'https://github.com/AndreasBaumgart/rubocop-config'
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this section
  # to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/AndreasBaumgart/rubocop-config'
    spec.metadata['changelog_uri'] = 'https://github.com/AndreasBaumgart/rubocop-config/tree/master/CHANGELOG.md'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir['config/*.yml']

  spec.add_runtime_dependency 'rubocop', '~> 1.12'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 12.3'
end
