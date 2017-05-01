class BeerMain < ApplicationRecord
	has_many :recipes, inverse_of: :beer_main
end
