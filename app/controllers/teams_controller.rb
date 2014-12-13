class TeamsController < ApplicationController
	def index
		@teams = Team.all
		render json: @teams, status: 200
	end

	def new
		@team = Team.new
	end

	def create
		@team = Team.new(team_params)
		@team.save
		redirect_to teams_path
		render json: @teams, status: 201
end

def team_params
	params.require(:team).permit(:teamname)
end
end