class CreateCuisins < ActiveRecord::Migration
  def change
    create_table :cuisins do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
