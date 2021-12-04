class RemovePlayerIdFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :player_id 
  end
end
