
require 'cfpropertylist'

class VPNUtility

  def initialize
    # … later, read it again
    plist = CFPropertyList::List.new(:file => "vpn-status.plist")
    data = CFPropertyList.native_types(plist.value)
    @index=(data["index"]%19)
  end

  def getIndex
    @index
  end



end