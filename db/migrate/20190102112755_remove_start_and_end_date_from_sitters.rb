class RemoveStartAndEndDateFromSitters < ActiveRecord::Migration[5.2]
  def change
    remove_column :sitters, :availability_start
  end
end
