class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :event_name
      t.text :event_address
      t.date :event_date

      t.timestamps
    end
  end
end
