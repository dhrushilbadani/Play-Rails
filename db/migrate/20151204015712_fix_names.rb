class FixNames < ActiveRecord::Migration
  def change
    rename_table :trainers, :users
    rename_table :pokemons, :games
  end
end
