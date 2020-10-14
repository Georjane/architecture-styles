class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(name: params[:session][:name.downcase])
    if user.nil?
      # Create an error message.
      flash.now[:danger] = 'Invalid username, please click on the logo and sign up'
      render 'new'
    else
      log_in(user)
      redirect_to user
    end
  end
  
  def destroy
  end
end
