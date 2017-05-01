class RemoveCostGrainFromGrains < ActiveRecord::Migration[5.0]
  def change
    remove_column :grains, :costGrain, :decimal
  end
end
