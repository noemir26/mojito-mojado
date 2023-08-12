class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :quantity, presence: true
  validates :ingredient_id, presence: true, uniqueness: { scope: :cocktail_id }

  # You can have ingredients with the same name in different cocktails
end
