# Preview all emails at http://localhost:3000/rails/mailers/address_confirmation_mailer
class AddressConfirmationMailerPreview < ActionMailer::Preview

  def address_confirmation_mailer_preview
    AddressConfirmationMailer.address_confirmation_email(User.last)
  end

end
