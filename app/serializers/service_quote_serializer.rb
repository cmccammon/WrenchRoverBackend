class ServiceQuoteSerializer < ActiveModel::Serializer
  attributes  :id,
              :service_request_id,
              :service_center_id,
              :quote_text,
              :quote_cost,
              :accepted,
              :available_date_1,
              :available_date_2,
              :available_date_3,
              :updated_at,
              :created_at

  belongs_to :service_center
  # belongs_to :service_request

end
