require 'net/http'
require 'json'
require 'ostruct'



module HaloApi
	class Client
		TITLE_CONSTANT = "h5"
		@link_base = "https://www.haloapi.com/stats/#{TITLE_CONSTANT}/players/sloster/matches?modes=arena&count=10"

		def self.api_request(link, options=[])
			puts @link_base
			uri = URI(link)
			request = Net::HTTP::Get.new(uri.request_uri)
			request['Ocp-Apim-Subscription-Key'] = ENV['halo_access_token']
			response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
		    	http.request(request)
			end
			return JSON.parse(response.body, object_class: OpenStruct)
		end
	end
end