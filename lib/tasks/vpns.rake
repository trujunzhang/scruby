namespace :vpns do
  desc "Auto connect VPN"
  task :auto_connection => :environment do
    jobs = Job.all
    count = jobs.count
    puts "#{Time.now} :#{count} - Success!"
  end

end
