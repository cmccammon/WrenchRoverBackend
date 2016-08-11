class UserCalendarSerializer < ActiveModel::Serializer
  attributes :id, :user_appointment
  has_one :service_quote
end
