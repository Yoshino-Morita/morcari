class RemoveExpirationDateFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :expiration_date, :integer
  end
end
