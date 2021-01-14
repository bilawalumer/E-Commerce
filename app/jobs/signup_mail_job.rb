class SignupMailJob < ApplicationJob
  queue_as :default
  
  def perform(user)
    UsersMailer.welcome_email(user)z.deliver
  end
  
end
