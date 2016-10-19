class ServiceRequestSerializer < ActiveModel::Serializer
  attributes :id,
             :service_request_id,
             :auto_id,
             :user_id,
             :quote_text,
             :quote_cost

  has_one :user
end
