class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.login_field = 'email'
  end
  
  def deliver_reset_password_instructions!  
    reset_perishable_token!  
    Notifier.reset_password_instructions(self).deliver
  end
end
