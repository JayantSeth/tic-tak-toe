class PlayersController < ApplicationController
  def new 
    @player = Player.new() 
  end

  def create 
    primary = session[:new_game] ? true : false 
    game = Game.find_by_id(session[:game])
    the_params = set_player 
    the_params[:game] = game
    player = Player.new(the_params)
    if player.save 
      session[:player] = player.id 
      redirect_to controller: 'games', action: 'show', id: game.id 
    else  
      puts player.errors.full_messages 
    end
  end

  private
  def set_player
    params.require(:player).permit(:name)
  end
end
