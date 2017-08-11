class ChangeCategorySmallIdToItems < ActiveRecord::Migration
  def up
    change_column_null :items, :category_small_id, true
  end

  def down
    change_column_null :items, :category_small_id, false
  end
end
