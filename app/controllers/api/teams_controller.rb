# frozen_string_literal: true

class Api::TeamsController < ApplicationController
  def index
    teams = Team.includes(:players).map do |team|
      {
        id: team.id,
        name: team.name
      }
    end
    render json: teams, order: :name
  end

  def new
    @team = Team.new
  end

  def create
    team = Team.new(team_params)
    if team.save
      render json: team
    else
      render json: { errors: team.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    team = Team.find(params[:id])

    if team.update(name: params[:new_name])
      render json: team
    else
      render json: { errors: team.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    team = Team.find(params[:id])
    players = team.players
    render json: players if players
  end

  def destroy
    team = Team.find(params[:id])
    team.destroy
    render json: { message: 'Team deleted' }
  end

  private

  def team_params
    params.require(:team).permit(
      :name,
      :id,
      :created_at,
      :updated_at
    )
  end
end
