require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new("test") do |t|
  t.libs << "test"
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
  t.description = "Run the unit tests"
end
