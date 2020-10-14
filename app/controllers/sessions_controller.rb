class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:session][:name.downcase])
    if user.nil?
      # Create an error message.
      flash[:danger] = 'Invalid username, please sign up'
      redirect_to root_url
    else
      log_in(user)
      redirect_to user
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
