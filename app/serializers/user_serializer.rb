class UserSerializer < ActiveModel::Serializer
  attributes  :id,
              :user_name,
              :user_email,
              :user_zip,
              :user_phone,
              :auto_id
end
