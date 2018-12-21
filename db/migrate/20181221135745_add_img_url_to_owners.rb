class AddImgUrlToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :img_url, :string
  end
end
