# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-login-unico/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Renato de Souza"]
  gem.email         = ["Renato de Souza"]
  gem.description   = %q{Official OmniAuth strategy for Gov.br Login Unico.}
  gem.summary       = %q{Official OmniAuth strategy for Gov.br Login Unico.}
  gem.homepage      = "https://github.com/souzanato/omniauth-login-unico"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-login-unico"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::LoginUnico::VERSION

  gem.add_dependency 'omniauth', '~> 2.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.8'
  gem.add_development_dependency 'rspec', '~> 3.5'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end


# # frozen_string_literal: true

# require_relative "lib/omniauth-login-unico/version"

# Gem::Specification.new do |spec|
#   spec.name = "omniauth-login-unico"
#   spec.version = OmniauthLoginUnico::VERSION
#   spec.authors = ["Renato de Souza"]
#   spec.email = ["renatocdesouza@gmail.com"]

#   spec.summary = "TODO: Write a short summary, because RubyGems requires one."
#   spec.description = "TODO: Write a longer description or delete this line."
#   spec.homepage = "TODO: Put your gem's website or public repo URL here."
#   spec.license = "MIT"
#   spec.required_ruby_version = ">= 2.6.0"

#   spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

#   spec.metadata["homepage_uri"] = spec.homepage
#   spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
#   spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

#   # Specify which files should be added to the gem when it is released.
#   # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
#   spec.files = Dir.chdir(__dir__) do
#     `git ls-files -z`.split("\x0").reject do |f|
#       (File.expand_path(f) == __FILE__) ||
#         f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
#     end
#   end
#   spec.bindir = "exe"
#   spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
#   spec.require_paths = ["lib"]

#   # Uncomment to register a new dependency of your gem
#   # spec.add_dependency "example-gem", "~> 1.0"

#   # For more information and examples about making a new gem, check out our
#   # guide at: https://bundler.io/guides/creating_gem.html
# end
