class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :restaurant_id
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
