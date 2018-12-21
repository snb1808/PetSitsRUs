class CreateSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :sitters do |t|
      t.string :first_name
      t.string :last_name
      t.integer :average_rating
      t.string :gender
      t.date :availability

      t.timestamps
    end
  end
end
