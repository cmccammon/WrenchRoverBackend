class AddServiceQuoteToServiceRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :service_quotes, :service_request_id, :string
    add_reference :service_quotes, :service_request, foreign_key: true
  end
end
