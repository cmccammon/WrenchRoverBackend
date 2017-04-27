class ServiceRequestSerializer < ActiveModel::Serializer
  attributes :id,
             :work_request,
             :user_id,
             :created_at,
             :selected_date,
             :auto_id,
             :description

  # belongs_to :user

  belongs_to :auto
  has_many :service_quotes
end
