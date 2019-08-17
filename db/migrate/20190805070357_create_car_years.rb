class CreateCarYears < ActiveRecord::Migration[5.2]
  def change
    create_table :car_years do |t|
      t.integer :car_model_id
      t.integer :car_year

      t.timestamps
    end
  end
end
