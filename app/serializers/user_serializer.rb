class UserSerializer < ActiveModel::Serializer

  attributes  :id,
              :user_name,
              :user_email,
              :user_zip,
              :user_phone,
              :created_at,
              :updated_at,
              :email_confirmation

  has_many :autos
  has_many :service_requests
  has_many :service_centers
end
