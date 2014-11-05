class PlayersController < ApplicationController
  def index
    @signs = ["rock", "paper", "scissors"]
  end

  def throw
    player = Player.new(params[:sign])
    @outcome = player.compare
  end
end
