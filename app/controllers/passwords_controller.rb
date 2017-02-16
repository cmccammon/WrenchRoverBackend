class PasswordsController < ApplicationController
  skip_before_action :authenticate_request, only: [:forgot, :reset]


  def forgot
    if params[:user_email].blank?
      return render json: {error: 'Email not present'}
    end

    user = User.find_by_user_email(params[:user_email])

    if user.present?
      user.generate_password_token!
      # PasswordResetMailer.password_reset_email(@user).deliver
      render json: {status: 'ok', token: user.reset_password_token}, status: :ok
    else
      render json: {error: ['Email address not found. Please check and try again.']}, status: :not_found
    end
  end

  def reset
  token = params[:token].to_s

  if token.blank?
    return render json: {error: 'Token not present'}
  end

  user = User.find_by_reset_password_token(token)

  if user.present? && user.password_token_valid?
    if user.reset_password!(params[:password])
      render json: {status: 'Password changed'}, status: :ok
    else
      render json: {error: user.errors.full_messages}, status: :unprocessable_entity
    end
  else
    render json: {error:  ['Link not valid or expired. Try generating a new link.']}, status: :not_found
  end
end



end
