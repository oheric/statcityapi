class PositionsController < ApplicationController
	def index
		@positions = Position.all
		render json: @positions, status: 200
	end

	def new
		@position = Position.new
	end

	def create
		@position = Position.new(position_params)
		@position.save
		redirect_to positions_path
		# render json: @positions, status: 201
	end

	def position_params
		params.require(:position).permit(:positiontype)
	end
end
