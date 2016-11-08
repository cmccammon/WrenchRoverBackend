class AddressConfirmationMailer < ApplicationMailer

  def address_confirmation_email(user)
    @user = user
    mail(to: @user.user_email, subject: "Welcome to WrenchRover!")
  end

end
