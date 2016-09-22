class AddFieldsToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :desc, :string
    add_column :categories, :info_link, :string
    add_column :categories, :icon_link, :string
  end
end
