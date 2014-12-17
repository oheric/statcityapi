class PlayerstatsController < ApplicationController

	def index

		@playerstats = Playerstat.all
		end

		def show
			@playerstats = Playerstat.all
			render json: @playerstats, status: 200
		end
	end
