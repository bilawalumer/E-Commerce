class UsersMailer < ActionMailer::Base

    def welcome_email(user)

        @user = User.find(user.id)
        mail(   :to      => @user.email,
                :subject => "Welcome"
        ) do |format|
            format.text
            format.html
        end
    end
end
    