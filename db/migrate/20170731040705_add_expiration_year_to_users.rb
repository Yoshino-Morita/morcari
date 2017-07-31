class AddExpirationYearToUsers < ActiveRecord::Migration
  def change
    add_column :users, :expiration_year, :integer
  end
end
