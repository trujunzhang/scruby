namespace :vpns do
  desc "Auto connect VPN"
  task :auto_connection => :environment do
    # jobs = Job.all
    # count = jobs.count
    # puts "#{Time.now} :#{count} - Success!"
    # nmcli
    # nmcli con list
    # nmcli con up uuid <uuid>

    puts "Current vpn index is #{ENV['vpn_index']}"

    puts "#{Time.now} - Success!"

    # _socialmedium = Socialmedium.new
    # _socialmedium.facebook = "wanghao"
    # _socialmedium.twitter = "djzhang"
    # _socialmedium.google = "trujunzhang"
    # _socialmedium.linkedin = "wh"
    # _socialmedium.ofFacebookLikes = 123
    #
    # _socialmedium.save
  end

end
