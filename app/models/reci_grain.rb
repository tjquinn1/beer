class ReciGrain < ApplicationRecord
  belongs_to :recipe, optional: true
  belongs_to :grain, optional: true
end
