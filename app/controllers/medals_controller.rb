class MedalsController < ApplicationController
	def show
		str = params[:id].titleize
		@medal = Medal.find_by(name: str)
	end
end
