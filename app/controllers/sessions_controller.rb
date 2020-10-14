class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(name: params[:session][:name.downcase)
    if user && user.authenticate(params[:session][:name])
    # Log the user in and redirect to the user's show page.
    log_in user
    redirect_to user
    else
    # Create an error message.
      flash[:danger] = 'Invalid username'
      render 'new'
    end
  end
  
  def destroy
  end
end
