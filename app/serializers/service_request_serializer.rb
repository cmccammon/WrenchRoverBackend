class ServiceRequestSerializer < ActiveModel::Serializer
  attributes :id,
             :work_request,
             :auto_id,
             :user_id

  has_one :user

end
