class AddBeerToReciepes < ActiveRecord::Migration[5.0]
  def change
    add_reference :recipes, :beer_main, foreign_key: true
  end
end
