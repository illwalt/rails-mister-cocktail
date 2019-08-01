class Cocktail < ApplicationRecord
  # relations
  has_many :doses, dependent: :destroy
  has_many :ingredients
  has_many :ingredients, through: :doses

  # validation
  validates :name, presence: true, uniqueness: true
end
