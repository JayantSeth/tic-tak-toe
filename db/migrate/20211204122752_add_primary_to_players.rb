class AddPrimaryToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :primary, :boolean
  end
end
