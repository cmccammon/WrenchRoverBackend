class ServiceRequestSerializer < ActiveModel::Serializer
  attributes :id,
             :work_request,
             :user_id

  has_one :user

end
