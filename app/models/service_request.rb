class ServiceRequest < ApplicationRecord
  belongs_to :user
  belongs_to :auto


  has_many :service_quotes, dependent: :delete_all

end
