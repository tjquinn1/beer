class AddGrainsToBeer < ActiveRecord::Migration[5.0]
  def change
    add_reference :grains, :recipe, foreign_key: true
  end
end
