class ServiceCenterSerializer < ActiveModel::Serializer
  attributes  :id,
              :service_name,
              :service_address,
              :service_address_second,
              :service_city,
              :service_state,
              :service_zip,
              :service_phone,
              :service_email,
              :service_bio

has_many :service_quotes
end
