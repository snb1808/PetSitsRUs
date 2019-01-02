class RemoveAvailabilityFromSitters < ActiveRecord::Migration[5.2]
  def change
    remove_column :sitters, :availability
  end
end
