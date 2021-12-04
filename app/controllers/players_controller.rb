class PlayersController < ApplicationController
  def new 
    @player = Player.new
  end

  def create 
    @player = Player.new(set_params) 
    if @player.save 
      puts "awesome"
    end
  end

  private 
  def set_params 
    params.require(:player).permit(:name)
  end
end
