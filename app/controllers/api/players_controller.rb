class Api::PlayersController < ApplicationController

  def create
    player = Player.new(player_params)
    if player.save
      render json: player, sort: :name
    else
      render json: { errors: player.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    players = Player.all
    render json: players
  end

  private

  def player_params
    params.require(:player).permit(
      :name,
      :team_id,
      :id,
      :created_at,
      :updated_at
    )
  end
end
