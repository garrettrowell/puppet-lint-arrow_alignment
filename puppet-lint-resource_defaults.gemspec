Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-resource_defaults'
  spec.version     = '0.0.1'
  spec.author      = 'Garrett Rowell'
  spec.email       = 'garrett@puppet.com'
  spec.metadata    = {
    'source_code_uri'   => 'https://github.com/garrettrowell/puppet-lint-resource_defaults',
    'documentation_uri' => 'https://github.com/garrettrowell/puppet-lint-resource_defaults/blob/master/README.md'
  }
  spec.homepage    = 'https://rubygems.org/gems/puppet-lint-resource_defaults'
  spec.license     = 'MIT'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'puppet-lint resource defaults'
  spec.description = <<-EOF
    Extends puppet-lint check resource defaults for arrow alignment.
  EOF

  spec.add_dependency             'puppet-lint', '>= 1.1', '< 3.0'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rubocop', '~> 0.80.0'
  spec.add_development_dependency 'rake', '~> 13.0.0'
  spec.add_development_dependency 'rspec-json_expectations', '~> 2.2'
  spec.add_development_dependency 'simplecov', '~> 0.18.0'
end
