# frozen_string_literal: false

# This is a child class
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian], case_sensitive: false }
end
