require 'net/http'
require 'json'

class MatchesController < ApplicationController


	def show
		@uri = URI("https://www.haloapi.com/stats/h5/matches/0ed2fea6-ac2b-49aa-b3a7-e555e8fb6012/events")
		request = Net::HTTP::Get.new(@uri.request_uri)
		# Request headers
		request['Ocp-Apim-Subscription-Key'] = ENV['halo_access_token']
		# Request body
		request.body = "{body}"
		response = Net::HTTP.start(@uri.host, @uri.port, :use_ssl => @uri.scheme == 'https') do |http|
		    http.request(request)
		end
		@matchEvents = JSON.parse(response.body)
		@matchEvents = @matchEvents["GameEvents"]
	end
end
