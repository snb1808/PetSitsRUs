class AddDescriptionColumnToSitters < ActiveRecord::Migration[5.2]
  def change
    add_column :sitters, :description, :string
  end
end
