class UserMailer < ActionMailer::Base
  default :from => "dropurmail2mothi@gmail.com"

  def registration_confirmation(user)
    @user = user
    attachments["hand.gif"] = File.read("#{Rails.root}/public/images/hand.gif")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end

end

ActionMailer::Base.default_url_options[:host] = "10.10.3.58:3000"