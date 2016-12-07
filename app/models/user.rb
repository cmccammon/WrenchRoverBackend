class User < ApplicationRecord
  has_secure_password
  before_save { self.user_email = user_email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :user_email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }


  has_many :autos, dependent: :destroy
  has_many :service_centers, dependent: :destroy
  has_many :service_requests, dependent: :destroy
  has_many :service_quotes, through: :service_requests


end
