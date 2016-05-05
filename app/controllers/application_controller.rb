require 'net/http'
require 'json'

class ApplicationController < ActionController::Base
	
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 #  	def api_request(link, options=[])
	# 	uri = URI(link)
	# 	request = Net::HTTP::Get.new(uri.request_uri)
	# 	request['Ocp-Apim-Subscription-Key'] = ENV['halo_access_token']
	# 	response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
	# 	    http.request(request)
	# 	end
	# 	return JSON.parse(response.body)
	# end
end
