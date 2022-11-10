# frozen_string_literal: false

# This is a child class
class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true, in: 0..5 }
end
