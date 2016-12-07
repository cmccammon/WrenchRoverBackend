class ServiceRequest < ApplicationRecord
  belongs_to :user


  has_one :auto
  has_many :service_quotes, dependent: :destroy

end
