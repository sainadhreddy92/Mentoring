class UserMailer < ApplicationMailer
  default from: 'csg-mentoring-core'

  def notify(user)
    @user = user
    email = user.cec_id + '@cisco.com'
    mail(to: email,subject: "CSG Mentoring Tool")
  end
  
  def alert(user)
    @user = user
    email = 'sachilig@cisco.com'
    mail(to: email,subject: "Problem in Mentoring program")
  end	

end
