# frozen_string_literal: false

# This is a child class
class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :content, null: false
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
