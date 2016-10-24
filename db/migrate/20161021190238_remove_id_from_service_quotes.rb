class RemoveIdFromServiceQuotes < ActiveRecord::Migration[5.0]
  def change
    remove_column  :service_quotes, :user_id, :integer
    remove_column :service_quotes, :auto_id, :integer
    
  end
end
