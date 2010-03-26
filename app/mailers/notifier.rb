# -*- coding: utf-8 -*-
class Notifier < ActionMailer::Base
  default_url_options[:host] = "192.168.0.18:3000"
  default :from => "donotreply@suakx.com"

  def reset_password_instructions(user)
    @user = user
    mail(:to => "#{user.login} <#{user.email}>", :subject => "Password Reset Instructions")
  end
end
