class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  # before_destroy :check_for_cocktail

  validates :name, presence: true, uniqueness: true
  # validates :cocktail, presence: true, uniqueness: true
  # validates :dose, presence: true

# private

# def check_for_cocktail
#   unless cocktail.nil?
#     self.errors[:base] << "Cannot delete ingredient while a cocktail exists."
#     return false
#   end
# end

end
