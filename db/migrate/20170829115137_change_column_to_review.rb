class ChangeColumnToReview < ActiveRecord::Migration
  def up
    change_column :reviews, :created_at, :integer, null: true
    change_column :reviews, :updated_at, :integer, null: true
  end

  def down
    change_column :reviews, :created_at, :integer, null: false
    change_column :reviews, :updated_at, :integer, null: false
  end
end
