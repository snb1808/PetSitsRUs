class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :address
      t.string :telephone_number
      t.string :email

      t.timestamps
    end
  end
end
