class AddAdditionalDatesToServiceQuotes < ActiveRecord::Migration[5.0]
  def change
    rename_column :service_quotes, :availible_dates, :available_date_1
    add_column :service_quotes, :available_date_2, :string
    add_column :service_quotes, :available_date_3, :string
  end
end
