require 'net/http'
require 'json'

module Client
		def initialize
			puts "helooooo"
		end

		def self.hello
			puts "you there'"
		end

		def self.fetch_api(link, options=[])
		uri = URI(link)
		request = Net::HTTP::Get.new(uri.request_uri)
		request['Ocp-Apim-Subscription-Key'] = ENV['halo_access_token']
		response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
		    http.request(request)
		end
		return JSON.parse(response.body)
	end
end