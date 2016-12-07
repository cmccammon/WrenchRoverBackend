class User < ApplicationRecord
  has_secure_password


  has_many :autos, dependent: :destroy
  has_many :service_centers, dependent: :destroy
  has_many :service_requests, dependent: :destroy
  has_many :service_quotes, through: :service_requests


end
