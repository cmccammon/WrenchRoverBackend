class RemoveIdsFromOtherTables < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :auto_id, :integer
    add_column :autos, :service_request_id, :integer
    remove_column :service_requests, :auto_id, :integer

  end
end
