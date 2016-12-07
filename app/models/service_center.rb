class ServiceCenter < ApplicationRecord
  has_many :service_quotes, dependent: :destroy

  belongs_to :user
end
