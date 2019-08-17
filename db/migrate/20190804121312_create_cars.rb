class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :user_id
      t.integer :manufacture_id
      t.integer :car_model_id
      t.integer :car_year_id
      t.text :image_id
      t.text :introduction
      t.timestamps
    end
  end
end
