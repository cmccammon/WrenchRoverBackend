class ServiceCalendarSerializer < ActiveModel::Serializer
  attributes :id, :service_appointment
  has_one :user
end
