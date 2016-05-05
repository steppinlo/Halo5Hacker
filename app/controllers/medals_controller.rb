class MedalsController < ApplicationController
	def show
		@medal = Medal.find_by(medal_id: params[:id].titleize)
	end
end
