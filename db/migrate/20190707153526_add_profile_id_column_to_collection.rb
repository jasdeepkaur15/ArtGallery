class AddProfileIdColumnToCollection < ActiveRecord::Migration[5.2]
  def change
  	add_column :collections, :profile_id, :integer
  end
end
