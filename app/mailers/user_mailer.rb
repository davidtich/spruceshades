class UserMailer < ActionMailer::Base
    default from: "Spruce Shades <hello@spruceshades.com>"

    def signup_email(user)
        @user = user
        @twitter_message = "Excited for Spruce to launch."

        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
