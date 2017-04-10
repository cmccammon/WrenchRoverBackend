class AddAutoToServiceRequests < ActiveRecord::Migration[5.0]
  def change
    add_reference :service_requests, :auto, foreign_key: true
  end
end
