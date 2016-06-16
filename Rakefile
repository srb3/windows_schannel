require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'foodcritic'

# Style tests. Rubocop and Foodcritic
namespace :style do
  desc 'Run Ruby style checks'
  RuboCop::RakeTask.new(:rubocop) do |t|
    t.options = ['-D']
  end

  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:foodcritic) do |t|
    t.options = {
      fail_tags: ['any']
    }
  end
end

desc 'Run all style checks'
task style: ['style:foodcritic', 'style:rubocop']

# Rspec and ChefSpec
desc 'Run ChefSpec examples'
RSpec::Core::RakeTask.new(:spec)

# Default
task default: %w(style spec)
