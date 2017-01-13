class AddressConfirmationMailer < ApplicationMailer

  def address_confirmation_email(user)
    @user = user
    @token = JsonWebToken::encode(user_id: user.id)
    mail(to: @user.user_email, subject: "Welcome to WrenchRover!")
  end

end
