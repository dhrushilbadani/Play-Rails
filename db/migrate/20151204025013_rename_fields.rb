class RenameFields < ActiveRecord::Migration
  def change
    rename_column :games, :health, :users
    rename_column :games, :trainer_id, :user_id
    add_column :games, :location, :string
  end
end
