# frozen_string_literal: true

require_relative 'lib/rot135/version'

Gem::Specification.new do |spec|
  spec.name = 'rot135'
  spec.version = Rot135::VERSION
  spec.authors = ['Stephan Kämper']
  spec.email = ['the.tester@seasidetesting.com']

  spec.summary = 'A ROT13 (and ROT5 for digital digits) mini tool'
  spec.description = "'Encrypts' named files or STDIN using ROT13."
  spec.homepage = 'https://github.com/s2k/rot135'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/s2k/rot135'
  spec.metadata['changelog_uri'] = 'https://github.com/s2k/rot135/commits/main/'
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'mutex_m'
end
