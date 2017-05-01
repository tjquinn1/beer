class Recipe < ApplicationRecord
	belongs_to :beer_main, inverse_of: :recipes
	has_many :reci_grains
	has_many :grains, through: :reci_grains, :dependent => :destroy


	accepts_nested_attributes_for :reci_grains, allow_destroy: true

end
