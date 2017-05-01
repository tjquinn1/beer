class CreateReciGrains < ActiveRecord::Migration[5.0]
  def change
    create_table :reci_grains do |t|
      t.references :recipe, foreign_key: true
      t.references :grain, foreign_key: true
      t.float :amountGrain
      t.decimal :costGrain, precision: 15, scale: 2

      t.timestamps
    end
  end
end
