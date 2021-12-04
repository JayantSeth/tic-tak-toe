class RemovePlayer1Player2FromPlayers < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :player1 
    remove_column :games, :player2 
    add_column :games, :player_id, :integer
  end
end
