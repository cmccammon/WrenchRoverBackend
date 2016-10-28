class ServiceRequestSerializer < ActiveModel::Serializer
  attributes :id,
             :work_request,
             :user_id

  belongs_to :user

  has_one :auto
  has_many :service_quotes
end
