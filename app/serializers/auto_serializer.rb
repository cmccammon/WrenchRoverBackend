class AutoSerializer < ActiveModel::Serializer
  attributes :id, :year, :make, :model, :trim, :engine, :mileage, :user_id

  belongs_to :user
  has_many :service_requests
end
