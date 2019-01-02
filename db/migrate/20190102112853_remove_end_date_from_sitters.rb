class RemoveEndDateFromSitters < ActiveRecord::Migration[5.2]
  def change
    remove_column :sitters, :availability_end
  end
end
