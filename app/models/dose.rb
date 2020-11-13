class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail, message:
  'should create only one dose per cocktail and ingredient' }
  validates :description, presence: true
end
