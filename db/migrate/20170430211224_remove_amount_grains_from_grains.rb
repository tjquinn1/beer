class RemoveAmountGrainsFromGrains < ActiveRecord::Migration[5.0]
  def change
    remove_column :grains, :amountGrain, :float
  end
end
