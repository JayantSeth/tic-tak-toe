class GamesController < ApplicationController 
  before_action :set_game, only: [:show]
  def index 
  end 

  def new 
    game = Game.new() 
    if game.save 
      session[:game] = game.id 
      session[:new_game] = true 
      redirect_to new_player_path 
    else  
      puts game.errors.full_messages 
    end
  end 

  def show 
  end

  private 
  def set_game 
    @game = Game.find_by_id(params[:id]) 
  end 
end
