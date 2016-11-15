class AddScheduleDatesToServiceQuotes < ActiveRecord::Migration[5.0]
  def change
    add_column :service_quotes, :available_dates, :string
    add_column :service_requests, :selected_date, :string
  end
end
