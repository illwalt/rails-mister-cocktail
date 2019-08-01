class Dose < ApplicationRecord
# relations
belongs_to :cocktail
belongs_to :ingredient

  # validation
  # validates :description, presence: true
  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true, uniqueness: { scope: :cocktail_id }
end
