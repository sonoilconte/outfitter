class Outfit < ApplicationRecord
  has_many :outfit_items, dependent: :destroy
  has_many :items, through: :outfit_items
end
