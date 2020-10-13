# frozen_string_literal: true

require_relative "lib/omniauth/vtex_oauth2/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-vtex-oauth"
  spec.version       = OmniAuth::VtexOauth::VERSION
  spec.authors       = ["Claudio Ramos"]
  spec.email         = ["claudio.ramos@hey.com"]

  spec.summary       = "VTEX strategy for OmniAuth"
  spec.homepage      = "https://github.com/vtex/omniauth-vtex-oauth"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/vtex/omniauth-vtex-oauth"
  spec.metadata["changelog_uri"] = "https://github.com/vtex/omniauth-vtex-oauth/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "omniauth", ">= 1.9.1"
  spec.add_runtime_dependency "omniauth-oauth2", ">= 1.7.0"
end
