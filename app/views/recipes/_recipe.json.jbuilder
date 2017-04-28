json.extract! recipe, :id, :name, :dateBrewed, :oG, :fG, :oGTemp, :fGTemp, :sugarBottle, :targOG, :targFG, :estCarb, :dateBottled, :targFermTime, :sparTime, :boilTime, :mashTime, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
