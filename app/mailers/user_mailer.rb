class UserMailer < ApplicationMailer
  default from: 'sachilig@cisco.com'

  def notify(user)
    @user = user
    email = user.cec_id + '@cisco.com'
    mail(to: email,subject: "CSG Mentoring Tool")
  end
	

end
