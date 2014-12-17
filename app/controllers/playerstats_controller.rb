class PlayerstatsController < ApplicationController

	def index

		@playerstats = Playerstat.all
		end
	end
