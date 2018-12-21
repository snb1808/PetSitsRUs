class RemoveAverageRatingFromSitters < ActiveRecord::Migration[5.2]
  def change
    remove_column :sitters, :average_rating, :string
  end
end
