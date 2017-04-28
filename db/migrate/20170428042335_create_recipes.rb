class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.date :dateBrewed
      t.float :oG
      t.float :fG
      t.float :oGTemp
      t.float :fGTemp
      t.float :sugarBottle
      t.float :targOG
      t.float :targFG
      t.float :estCarb
      t.date :dateBottled
      t.time :targFermTime
      t.time :sparTime
      t.time :boilTime
      t.time :mashTime

      t.timestamps
    end
  end
end
