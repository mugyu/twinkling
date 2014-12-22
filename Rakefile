# -*- coding: utf-8 -*-
require "rubocop/rake_task"

task default: [:rubocop]

desc "Run RuboCop on the lib directory"
RuboCop::RakeTask.new(:rubocop) do |t|
  t.patterns = ["./twinkling/**/*.rb"]
end
