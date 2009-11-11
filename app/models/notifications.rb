ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.server_settings = {
  :address => "mail.getplough.com",
  :port => 25,
  :domain => "getplough.com",
  :user_name => "MyUsername",
  :password => "MyPassword",
  :authentication => :login
}

class Notifications < ActionMailer::Base
  

  def forgot_password(to, login, pass, sent_at = Time.now)
    @subject    = "Your password is ..."
    @body['login']=login
    @body['pass']=pass
    @recipients = to
    @from       = 'support@yourdomain.com'
    @sent_on    = sent_at
    @headers    = {}
  end

end
