class AddAvatarToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :avatar, :string
    add_column :photos, :name, :string
  end
end
