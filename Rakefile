# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'minitest/test_task'
require 'rubocop/rake_task'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = '--format pretty --color' # Any valid command line option can go here.
end

Minitest::TestTask.create
RuboCop::RakeTask.new

task default: %i[test cucumber rubocop]
