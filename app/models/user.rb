class User < ApplicationRecord
  has_many :service_requests
  has_many :autos
end
