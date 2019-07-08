class AddColumnToPhoto < ActiveRecord::Migration[5.2]
  def change
  	add_column :photos, :collection_id, :integer
  end
end
