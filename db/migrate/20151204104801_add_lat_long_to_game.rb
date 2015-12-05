class AddLatLongToGame < ActiveRecord::Migration
  def change
    add_column :games, :latitude, :float
    add_column :games, :longitude, :float
    remove_column :games, :level
  end
end
