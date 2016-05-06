require 'net/http'
require 'json'
require "xbox-api"
require 'ostruct'

class MatchesController < ApplicationController
	def show
		# "https://www.haloapi.com/stats/h5/players/sloster/matches#{modes}#{start}#{count}"
		link = "https://www.haloapi.com/stats/h5/arena/matches/#{params[:path]}"
		@uri = URI(link)
		@matchEvents = Match.fetch_data(link)
		# user = $xbox_client.gamer("sloster")
		# game_clips = user.game_specific_clips("219630713")
	end

	def index
		link = "https://www.haloapi.com/stats/h5/players/sloster/matches?modes=arena&count=10"
		@uri = URI(link)
		@matchEvents = Match.fetch_data(link)
		@matchEvents = @matchEvents["Results"]

	end

	# 	puts 
	# 	puts
	# 	uri = URI("https://www.haloapi.com/metadata/h5/metadata/medals")
	# request = Net::HTTP::Get.new(uri.request_uri)
	# # Request headers
	# request['Ocp-Apim-Subscription-Key'] = ENV['halo_access_token']
	# # Request body
	# request.body = "{body}"
	# response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
	# 	http.request(request)
	# end
	# 	puts medalsHash = JSON.parse(response.body, object_class: OpenStruct)
	# end
end
