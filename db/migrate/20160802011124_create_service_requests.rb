class CreateServiceRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :service_requests do |t|
      t.string :request_auto_data
      t.string :request_issue
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
