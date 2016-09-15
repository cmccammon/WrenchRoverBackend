class ServiceRequestSerializer < ActiveModel::Serializer
  attributes :id,
             :request_auto_data,
             :request_issue,
             :user_id

  has_one :user
end
