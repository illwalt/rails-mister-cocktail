class Ingredient < ApplicationRecord
  # relations
  has_many :doses

  # validation
  validates :name, presence: true, uniqueness: true
end
