class RemoveRecipeRefFromGrains < ActiveRecord::Migration[5.0]
  def change
    remove_reference :grains, :recipe, index: true, foreign_key: true
  end
end
