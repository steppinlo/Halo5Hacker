# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'net/http'
require 'json'
require 'ostruct'

# def fetchMedals 
	uri = URI("https://www.haloapi.com/metadata/h5/metadata/medals")
	request = Net::HTTP::Get.new(uri.request_uri)
	# Request headers
	request['Ocp-Apim-Subscription-Key'] = ["API NAME HERE"]
	# Request body
	request.body = "{body}"
	response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
		http.request(request)
	end

	medalsHash = JSON.parse(response.body, object_class: OpenStruct)
	medalsHash.each do |m|

		medal = {name: m.name.downcase, difficulty: m.difficulty, medal_id: m.id, spriteLocation: m.spriteLocation}
		Medal.create!(medal)			
	end
# end

# fetchMedals
# Medal.create!(name:"hello", difficulty: 3, medal_id: "123")
