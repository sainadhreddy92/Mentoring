class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(cisco_email: params[:session][:cisco_email].downcase)
    if user && user.authenticate(params[:session][:password])
       log_in user
       redirect_to user
    else
      flash.now[:warning] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:notice] = 'Logged Out Successfully'
    redirect_to root_url
  end
end
