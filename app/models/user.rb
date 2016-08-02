class User < ApplicationRecord
  has_many :service_requests
end
