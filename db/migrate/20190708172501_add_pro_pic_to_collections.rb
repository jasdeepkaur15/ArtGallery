class AddProPicToCollections < ActiveRecord::Migration[5.2]
  def change
    add_column :collections, :pro_pic, :string
  end
end
