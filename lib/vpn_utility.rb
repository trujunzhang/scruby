require 'cfpropertylist'

class VPNUtility

  def initialize
    _all = Vpn.all
    @vpns = _all
    @count = _all.count

    # … later, read it again
    plist = CFPropertyList::List.new(:file => "vpn-status.plist")
    data = CFPropertyList.native_types(plist.value)
    @index=data["index"]
    @lastUUID = data["uuid"]
    puts "Read the last vpn index is #{@index}, uuid is #{@lastUUID}"
  end

  def next
    if @count
      @next=(@index+1)% @count

      _vpn = @vpns[@next]
      @vpnUUID = _vpn.vpnid

      puts "Current vpn index is #{@next}, uuid is #{@vpnUUID}"

      connection_vpn
    end

    self
  end

  def save
    if @count
      data = {
          'index' => @next,
          'uuid' => @vpnUUID
      }

      puts "Saving index is #{@next}, uuid is #{@vpnUUID}"

      # create CFPropertyList::List object
      plist = CFPropertyList::List.new

      # call CFPropertyList.guess() to create corresponding CFType values
      plist.value = CFPropertyList.guess(data)

      # write plist to file
      plist.save("vpn-status.plist", CFPropertyList::List::FORMAT_BINARY)
    end
  end

  private
  def connection_vpn()
    puts "Disonnecting vpn uuid is #{@lastUUID}"
    _command = "nmcli con down uuid #{@lastUUID}"
    puts "command is #{_command}"
    if @lastUUID != "ffffffff"
      system "nmcli con down uuid #{@lastUUID}"
    end

    puts "Connected vpn uuid is #{@vpnUUID}"
    _command = "nmcli con up uuid #{@vpnUUID}"
    puts "command is #{_command}"
    system "nmcli con up uuid #{@vpnUUID}"
  end


end