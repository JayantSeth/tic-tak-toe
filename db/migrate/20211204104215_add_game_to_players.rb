class AddGameToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :game_id, :integer
  end
end
