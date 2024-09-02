class Api::TeamsController < ApplicationController
  def index
    Team.all
  end
end
