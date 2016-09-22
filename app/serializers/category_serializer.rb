class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :desc, :info_link, :parent_id

  # has_many :children, class_name: "Category", foreign_key: :parent_id
  # belongs_to :parent, class_name: "Category", foreign_key: :id, optional: true

end
