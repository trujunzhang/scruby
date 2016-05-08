#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Scruby::Application.load_tasks



namespace :events do
  desc "Rake task to get events data"
  task :fetch => :environment do
    jobs = Job.all
    count = jobs.count
    puts "#{Time.now} :#{count} - Success!"
  end
end