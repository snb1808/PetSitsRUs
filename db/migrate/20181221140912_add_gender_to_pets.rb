class AddGenderToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :gender, :string
  end
end
