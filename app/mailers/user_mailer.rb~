class UserMailer < ActionMailer::Base
  default :from => 'sharingdaispro@gmail.com'
 
  def welcome_email(client)
    @client = client
    @url  = 'http://google.com/login'
    mail(to: @client.email, subject: 'Welcome to My Awesome Site')
  end
end
