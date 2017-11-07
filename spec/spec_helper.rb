# frozen_string_literal: true

# Require this file for unit tests
ENV["HANAMI_ENV"] ||= "test"

require_relative "./support/github_client_stub"
require_relative "../config/environment"

require "minitest/autorun"

Hanami.boot
