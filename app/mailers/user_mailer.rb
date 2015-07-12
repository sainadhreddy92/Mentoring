class UserMailer < ApplicationMailer
	default from: 'csg-mentoring-core'

  def notify(user)
    @user = user
    email = user.cec_id + 'cisco.com'
    mail(to: email,subject: "Notification")
  end
	

end
