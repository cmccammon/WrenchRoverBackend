class UserSerializer < ActiveModel::Serializer
  attributes  :id,
              :user_name,
              :user_email,
              :user_zip,
              :user_phone,
              :created_at



  has_many :autos
  has_many :service_requests
  # has_many :service_quotes


end
