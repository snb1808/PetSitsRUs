class AddImgUrlToSitters < ActiveRecord::Migration[5.2]
  def change
    add_column :sitters, :img_url, :string
  end
end
