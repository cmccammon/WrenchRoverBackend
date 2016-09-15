class AddNestedToCategory < ActiveRecord::Migration[5.0]
  require "awesome_nested_set"
  
  def self.up
    # add_column :categories, :parent_id, :integer # Comment this line if your project already has this column
    Category.where(parent_id: 0).update_all(parent_id: nil) # Uncomment this line if your project already has :parent_id
    add_column :categories, :lft,       :integer
    add_column :categories, :rgt,       :integer

    # optional fields
    add_column :categories, :depth,          :integer
    add_column :categories, :children_count, :integer

    # This is necessary to update :lft and :rgt columns
    Category.rebuild!

  end


  def self.down
    remove_column :categories, :parent_id
    remove_column :categories, :lft
    remove_column :categories, :rgt

    # optional fields
    # remove_column :categories, :depth
    # remove_column :categories, :children_count
  end

end
