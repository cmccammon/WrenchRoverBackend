class ServiceQuoteSerializer < ActiveModel::Serializer
  attributes :id,
              :quote_request_data,
              :request_issue,
              :service_center_id,
              :quote_text,
              :quote_cost

  has_one :service_center
end
