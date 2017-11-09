class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, :cocktail, :ingredient, presence: true
  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
end
