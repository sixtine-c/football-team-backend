class Api::TeamsController < ApplicationController
  def index
    teams = Team.includes(:players).map do |team|
      {
        id: team.id,
        name: team.name,
        players: team.players.pluck(:name)
      }
    end
    render json: teams
  end
end
