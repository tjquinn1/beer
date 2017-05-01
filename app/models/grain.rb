class Grain < ApplicationRecord
	has_many :reci_grains
	has_many :recipes, through: :reci_grains, :dependent => :destroy

	accepts_nested_attributes_for :reci_grains
end
