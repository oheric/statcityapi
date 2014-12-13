class PositionsController < ApplicationController
	def index
		@positions = Position.all
		@position = Position.new
	end

	def new
		@position = Position.new
	end

	def create
		@position = Position.new(position_params)
		@position.save
		redirect_to positions_path
	end

	def position_params
		params.require(:position).permit(:positiontype)
	end
end
