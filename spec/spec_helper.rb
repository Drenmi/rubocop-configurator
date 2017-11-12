# frozen_string_literal: true

ENV["HANAMI_ENV"] ||= "test"

require "simplecov"

SimpleCov.start do
  add_filter "/apps/web/application.rb"
  add_filter "/config/"
  add_filter "/spec/"
end

require_relative "./support/github_client_stub"
require_relative "../config/environment"

require "minitest/autorun"

Hanami.boot
