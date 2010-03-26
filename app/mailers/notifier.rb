# -*- coding: utf-8 -*-
class Notifier < ActionMailer::Base
#  default_url_options[:host] = "authlogic_example.binarylogic.com"  
#
#  def password_reset_instructions(user)  
#    subject       "Password Reset Instructions"  
#    from          "Binary Logic Notifier "  
#    recipients    user.email  
#    sent_on       Time.now  
#    body          :edit_password_reset_url => edit_password_reset_url(user.perishable_token)  
#  end
  default_url_options[:host] = "192.168.0.18:3000"
  default :from => "donotreply@suakx.com"

  def reset_password_instructions(user)
    @user = user
    mail(:to => "#{user.login} <#{user.email}>", :subject => "日本語Password Reset Instructions")
  end
end
