class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :evaluation,         null: false
      t.string :text
      t.integer :user_id,           foreign_key: true
      t.integer :buyer_id,          foreign_key: true
      t.timestamps null: false
    end
  end
end
