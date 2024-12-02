# frozen_string_literal: true

require_relative "lib/string_utils/version"

Gem::Specification.new do |spec|
  spec.name = "string_utils"
  spec.version = StringUtils::VERSION
  spec.authors = ["shalini0517"]
  spec.email = ["shalinipatel1702@gmail.com"]

  spec.summary       = "A Ruby gem for additional string manipulation utilities."
  spec.description   = "Provides methods like camelCase conversion, kebab-case conversion, title casing, and reversing words."
  spec.homepage = "https://github.com/shalini0517/string-utils"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  # Metadata links
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/shalini0517/string-utils"
  spec.metadata["changelog_uri"] = "https://github.com/shalini0517/string-utils/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released
  # Exclude `.gem` and unnecessary files
  spec.files = Dir.glob("{lib,spec}/**/*", base: __dir__) +
               Dir.glob("*.{md,gemspec}", base: __dir__) -
               Dir.glob("*.gem", base: __dir__)

  # Specify the directory for executable files
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Add runtime dependencies here if needed
  # Example: spec.add_dependency "example-gem", "~> 1.0"

  # Add development dependencies here
  spec.add_development_dependency "rspec", "~> 3.12"
end
