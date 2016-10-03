class User < ApplicationRecord
  has_secure_password
  
  has_many :service_requests
  has_many :autos
end
