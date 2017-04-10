class Auto < ApplicationRecord
  belongs_to :user
  has_many :service_requests
end
