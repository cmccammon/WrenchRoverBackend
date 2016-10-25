class ServiceQuoteSerializer < ActiveModel::Serializer
  attributes :id,


              :service_request_id,
              :service_center_id,
              :quote_text,
              :quote_cost

  belongs_to :service_center
  belongs_to :service_request

end
