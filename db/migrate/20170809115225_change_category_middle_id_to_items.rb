class ChangeCategoryMiddleIdToItems < ActiveRecord::Migration
  def up
    change_column_null :items, :category_middle_id, true
  end

  def down
    change_column_null :items, :category_middle_id, false
  end
end
