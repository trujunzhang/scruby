
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
    puts "Current vpn index is #{@index}"
  end

  def next
    @next=data["index"]% @count
    puts "Next vpn index is #{@next}"

    connection_vpn

    self
  end

  def save
    data["index"] = @next

    puts "Saving index is #{@next}"
    
    # create CFPropertyList::List object
    plist = CFPropertyList::List.new

    # call CFPropertyList.guess() to create corresponding CFType values
    plist.value = CFPropertyList.guess(data)

    # write plist to file
    plist.save("vpn-status.plist", CFPropertyList::List::FORMAT_BINARY)
  end

  private
  def connection_vpn
    puts "Connecting index is #{@next}"
  end


end