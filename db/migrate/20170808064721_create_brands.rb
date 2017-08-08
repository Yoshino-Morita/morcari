class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name, null: false
      t.integer :category_large_id,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
