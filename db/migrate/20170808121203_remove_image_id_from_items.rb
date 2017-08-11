class RemoveImageIdFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :image_id, :integer
  end
end
