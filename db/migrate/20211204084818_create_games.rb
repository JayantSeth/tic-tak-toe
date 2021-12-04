class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :state
      t.integer :player1 
      t.integer :player2 
      t.integer :winner
      t.timestamps
    end
  end
end
