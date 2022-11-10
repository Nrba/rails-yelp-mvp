# frozen_string_literal: false

# This is a child class
class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :phone_number, null: false
      t.string :category, null: false
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
