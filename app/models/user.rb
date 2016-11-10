class User < ApplicationRecord
  has_secure_password



  has_many :service_centers
  has_many :service_requests
  has_many :service_quotes, through: :service_request
  has_many :autos
end
