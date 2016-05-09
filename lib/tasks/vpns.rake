require 'vpn_utility'

namespace :vpns do
  desc "Auto connect VPN"
  task :auto_connection => :environment do
    # jobs = Job.all
    # count = jobs.count
    # puts "#{Time.now} :#{count} - Success!"
    # nmcli
    # nmcli con list
    # nmcli con up uuid <uuid>

    # whenever --update-crontab
    # crontab -l
    # crontab -e
    VPNUtility.new.next.save
  end

end
