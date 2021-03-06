class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :nickname,           null: false
      t.string :email,              null: false, default: ""
      t.string :last_name
      t.string :first_name
      t.string :last_kananame
      t.string :first_kananame
      t.integer :post_number
      t.string :city
      t.string :address
      t.string :building
      t.integer :phone_number
      t.integer :card_number
      t.integer :expiration_date
      t.integer :security_code
      t.string :user_photo
      t.integer :total_money
      t.integer :review_id,         foreign_key: true
      t.integer :area_id,           foreign_key: true
      t.string :encrypted_password, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end
    add_index :users, :nickname,             unique: true
    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
