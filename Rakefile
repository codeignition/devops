require 'rake'
require 'rspec/core/rake_task'
require 'foodcritic'
require 'kitchen'

namespace :style do
  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new do |t|
    t.options = {
      cookbook_paths: File.expand_path('../site-cookbooks/', __FILE__),
      fail_tags: ['any'],
      tags: [
        '~FC005',
        '~FC015',
        '~FC023',
      ]
    }
  end
end

desc 'Run all style checks'
task style: ['style:foodcritic']

namespace :integration do
  desc 'Run Test Kitchen with Vagrant'
  task :vagrant do
    Kitchen.logger = Kitchen.default_file_logger
    Kitchen::Config.new.instances.each do |instance|
      instance.test(:always)
    end
  end
end

desc 'Run all tests'
task default: ['style', 'integration:vagrant']
