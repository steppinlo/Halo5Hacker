class Medal < ActiveRecord::Base
	serialize :spriteLocation, OpenStruct
end
