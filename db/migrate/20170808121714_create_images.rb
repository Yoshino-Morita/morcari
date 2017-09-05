hiclass CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string    :image
      t.integer :item_id,       null: false
      t.timestamps
    end
  end
