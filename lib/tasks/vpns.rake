require 'cfpropertylist'

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


    # create a arbitrary data structure of basic data types
    data = {
        'name' => 'John Doe',
        'missing' => true,
        'last_seen' => Time.now,
        'friends' => ['Jane Doe','Julian Doe'],
        'likes' => {
            'me' => false
        }
    }

    # create CFPropertyList::List object
    # plist = CFPropertyList::List.new

    # call CFPropertyList.guess() to create corresponding CFType values
    # plist.value = CFPropertyList.guess(data)

    # write plist to file
    # plist.save("vpn-status.plist", CFPropertyList::List::FORMAT_BINARY)


    # … later, read it again
    plist = CFPropertyList::List.new(:file => "vpn-status.plist")
    data = CFPropertyList.native_types(plist.value)
    _index=data["index"]

    puts "Current vpn index is #{_index}"

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
