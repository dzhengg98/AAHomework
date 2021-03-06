class UserMailer < ApplicationMailer
    default from: 'from@example.com'

    def welcome_email(user)
        @user = user

        mail(to: @user.username, subject: "Welcome to the 99Cats community!")
    end
end
