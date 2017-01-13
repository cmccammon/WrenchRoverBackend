class Category < ApplicationRecord
  acts_as_nested_set

  has_many :children, class_name: "Category", foreign_key: :parent_id
  belongs_to :parent, class_name: "Category", foreign_key: :id, optional: true

  def self.collection_to_json(collection = roots)
    collection.inject([]) do |arr, model|
      arr << { id: model.id, name: model.name, label: model.label, desc: model.desc, parent_id: model.parent_id, children: collection_to_json(model.children) }
    end
  end

end
