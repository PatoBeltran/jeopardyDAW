class UserNotifier < ActionMailer::Base
  default from: "noreply@jeopardy.dev"

  def send_signup_email(user, password)
    @user = user
    @password = password
    mail to: @user.email, subject: 'Hey, welcome to Jeopardy!'
  end
end
