class CreateRestaurantHighlights < ActiveRecord::Migration
  def change
    create_table :restaurant_highlights do |t|
      t.string :restaurant_id
      t.string :highlight_id

      t.timestamps null: false
    end
  end
end
