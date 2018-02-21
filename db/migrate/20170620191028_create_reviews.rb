class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :restaurant_id
      t.integer :rating
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
