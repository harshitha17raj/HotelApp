class SessionsController < ApplicationController

  def new
  end

  def create
<<<<<<< HEAD
        user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user

    else
      flash.now[:danger] = 'Invalid email/password ' 
=======
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
        log_in user
	flash[:success]='Success'
    else
      # Create an error message.
      flash[:danger] = 'Invalid email/password combination' # Not quite right!

>>>>>>> d810a459bf60867128d482325070112554ad159a
      render 'new'
    end
  end

  def destroy
<<<<<<< HEAD
    log_out if logged_in?
    redirect_to root_url
  end
end

=======
    log_out
    redirect_to root_url

  end
end
>>>>>>> d810a459bf60867128d482325070112554ad159a
