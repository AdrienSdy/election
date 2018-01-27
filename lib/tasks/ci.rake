# frozen_string_literal: true

require 'rubocop/rake_task'

RuboCop::RakeTask.new

task ci: %i[rubocop spec]
