class AddAvailabilityStartAndAvailabilityEndToSitters < ActiveRecord::Migration[5.2]
  def change
    add_column :sitters, :availability_start, :date
    add_column :sitters, :availability_end, :date
  end
end
