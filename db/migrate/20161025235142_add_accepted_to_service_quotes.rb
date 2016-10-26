class AddAcceptedToServiceQuotes < ActiveRecord::Migration[5.0]
  def change
    add_column :service_quotes, :accepted, :string
  end
end
