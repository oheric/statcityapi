class TeamsController < ApplicationController
	before_action :set_team, only: [:destroy]
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

def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url }
      format.json { head :no_content }
    end
  end


private
	def team_params
		params.require(:team).permit(:teamname)
	end

	def set_team
	      @team = Team.find(params[:id])
	    end
end