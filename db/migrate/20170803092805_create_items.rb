class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      ## Database authenticatable
      t.string :name,            null: false
      t.integer :image_id,       null: false
      t.text :description,       null: false
      t.integer :category_large_id,    null: false, foreign_key: true
      t.integer :category_middle_id,    null: false, foreign_key: true
      t.integer :category_small_id,    null: false, foreign_key: true
      t.string :size,            null: false
      t.integer :brand_id,       foreign_key: true
      t.string :condition,       null: false
      t.string :delivery_charge, null: false
      t.string :how_to_delivery, null:false
      t.integer :area_id,        null: false, foreign_key: true
      t.string :shipping_dates,  null:false
      t.integer :price,          null:false
      t.integer :user_id,        null:false, foreign_key: true
      t.timestamps null: false
    end
  end
end
