class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :start_date
      t.date :end_date
      t.integer :pet_id
      t.integer :sitter_id

      t.timestamps
    end
  end
end
