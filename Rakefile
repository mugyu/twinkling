# -*- coding: utf-8 -*-
require "rake/testtask"
require "rubocop/rake_task"

task default: [:test, :rubocop]

desc "test/unit"
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/test_*.rb"]
  t.verbose = true
end

desc "Run RuboCop on the lib directory"
RuboCop::RakeTask.new(:rubocop) do |t|
  t.patterns = ["./twinkling/**/*.rb"]
end
