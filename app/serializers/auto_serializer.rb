class AutoSerializer < ActiveModel::Serializer
  attributes :id, :year, :make, :model, :trim, :engine, :mileage, :user_id, :service_request_id

  belongs_to :user
  belongs_to :service_request
end
