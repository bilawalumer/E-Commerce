class SignupMailJob < ApplicationJob
  queue_as :default
  
  def perform_later(user)
    UsersMailer.welcome_email(user).deliver
  end
  
end
