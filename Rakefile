# frozen_string_literal: true

require "rake"
require "rake/testtask"

require "hanami/rake_tasks"

Rake::TestTask.new do |t|
  t.pattern = "spec/**/*_spec.rb"
  t.libs << "spec"
  t.warning = false
end

task default: :test
task spec: :test
