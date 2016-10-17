class ChangeColumnsInServiceRequests < ActiveRecord::Migration[5.0]
  def change
    rename_column :service_requests, :request_auto_data, :auto_id
    rename_column :service_requests, :request_issue, :work_request
  end
end
