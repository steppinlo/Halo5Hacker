class Medal < ActiveRecord::Base
	include HaloApi
	serialize :spriteLocation, OpenStruct

	
end
