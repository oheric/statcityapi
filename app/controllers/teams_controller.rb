class TeamsController < ApplicationController
	def index
		@teams = Team.all
	end

	def new
		@team = Team.new
	end

	def create
		@team = Team.new(team_params)
		@team.save
		redirect_to teams_path
end

def team_params
	params.require(:team).permit(:teamname)
end
end