class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, :cocktail_id, presence: true
  validates :ingredient_id, presence: true, uniqueness: { scope: :cocktail_id }

  # You can have ingredients with the same name in different cocktails
end
