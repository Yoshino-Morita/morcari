class AddExpirationMonthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :expiration_month, :integer
  end
end
