# frozen_string_literal: true

require_relative "lib/boolean_attribute_store/version"

Gem::Specification.new do |spec|
  spec.name = "boolean_attribute_store"
  spec.version = BooleanAttributeStore::VERSION
  spec.authors = [""]
  spec.email = [""]

  spec.summary = "Utility methods for ActiveRecord models that store data in JSON."
  spec.description = ""
  spec.homepage = ""
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["allowed_push_host"] = ""

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = ""
  # spec.metadata["changelog_uri"] = ""

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "activesupport", "~> 6.1"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
