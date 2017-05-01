class CreateGrains < ActiveRecord::Migration[5.0]
  def change
    create_table :grains do |t|
      t.string :name
      t.string :origin
      t.float :amountGrain
      t.string :manufName
      t.decimal :costGrain, precision: 15, scale: 2

      t.timestamps
    end
  end
end
