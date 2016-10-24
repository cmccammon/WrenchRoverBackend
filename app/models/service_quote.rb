class ServiceQuote < ApplicationRecord
  belongs_to :service_center
  belongs_to :service_request
end
