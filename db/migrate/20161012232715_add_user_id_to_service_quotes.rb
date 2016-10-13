class AddUserIdToServiceQuotes < ActiveRecord::Migration[5.0]
  def change
    add_column :service_quotes, :user_id, :integer
  end
end
