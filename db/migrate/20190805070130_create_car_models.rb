class CreateCarModels < ActiveRecord::Migration[5.2]
  def change
    create_table :car_models do |t|
      t.integer :manufacture_id
      t.string :car_model

      t.timestamps
    end
  end
end
