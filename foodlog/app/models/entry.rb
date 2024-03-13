class Entry < ApplicationRecord
    validates :meal_type, :calories, :proteins, :carbohydrates, presence: true
    validates :fats, numericality: true
end
