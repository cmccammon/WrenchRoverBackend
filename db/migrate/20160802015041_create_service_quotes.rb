class CreateServiceQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :service_quotes do |t|
      t.string :quote_request_data
      t.string :request_issue
      t.references :service_center, foreign_key: true

      t.timestamps
    end
  end
end
