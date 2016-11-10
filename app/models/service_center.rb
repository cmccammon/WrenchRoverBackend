class ServiceCenter < ApplicationRecord
  has_many :service_quotes

  belongs_to :user
end
