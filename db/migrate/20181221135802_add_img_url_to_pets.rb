class AddImgUrlToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :img_url, :string
  end
end
