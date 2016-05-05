require 'net/http'
require 'json'
require "xbox-api"

class MatchesController < ApplicationController
	def show
		# "https://www.haloapi.com/stats/h5/players/sloster/matches#{modes}#{start}#{count}"
		link = "https://www.haloapi.com/stats/h5/players/sloster/matches?modes=arena&count=10"
		@uri = URI(link)
		@matchEvents = Match.fetch_data(link)
		@matchEvents = @matchEvents["Results"]
	end
end
