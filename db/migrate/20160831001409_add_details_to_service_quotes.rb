class AddDetailsToServiceQuotes < ActiveRecord::Migration[5.0]
  def change
    add_column :service_quotes, :quote_text, :string
    add_column :service_quotes, :quote_cost, :decimal
  end
end
