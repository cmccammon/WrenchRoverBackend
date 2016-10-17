class RenameColumnquoteRequestDataToserviceRequestIdInserviceQuotes < ActiveRecord::Migration[5.0]
  def change
    rename_column :service_quotes, :quote_request_data, :service_request_id
    rename_column :service_quotes, :request_issue, :auto_id
    
  end
end
