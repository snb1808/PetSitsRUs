class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.integer :owner_id
      t.string :name
      t.integer :age
      t.string :species

      t.timestamps
    end
  end
end
