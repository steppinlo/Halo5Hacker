require_dependency 'haloapi'

class Match < ActiveRecord::Base
	include HaloApi

	def self.fetch_data(link, options=[])
		HaloApi::Client.api_request(link, options)
	end
end
