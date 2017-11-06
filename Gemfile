# frozen_string_literal: true

source "https://rubygems.org"

ruby "2.4.2"

gem "rake"

gem "hanami",       "~> 1.0"
gem "hanami-model", "~> 1.0"

gem "pg"

gem "octokit"

group :development do
  gem "rubocop"
  gem "shotgun"
end

group :test, :development do
  gem "dotenv", "~> 2.0"
end

group :test do
  gem "capybara"
  gem "minitest"
end

group :production do
  gem "puma"
end
