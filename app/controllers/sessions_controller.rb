class SessionsController < ApplicationController
  def new
  end

  def create

     if user = User.authenticate_with_credentials(params[:email], params[:password])
      session[:user_id] = user.id
      flash.alert = 'Welcome! You are successfully logged in!'
      redirect_to '/'
    else
      redirect_to '/login', notice: 'User not found. Type correct email and password'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login', notice: 'Successfully logged out'
  end
end


# def create

#   user = User.find_by_email(params[:email])
#   # If the user exists AND the password entered is correct.
#   if user && user.authenticate(params[:password])
#     # Save the user id inside the browser cookie. This is how we keep the user 
#     # logged in when they navigate around our website.
#     session[:user_id] = user.id
#     flash.alert = 'Welcome! You are successfully logged in!'
#     redirect_to '/'
#   else
#   # If user's login doesn't work, send them back to the login form.
#     # flash.alert = "User not found."
#     redirect_to '/login', notice: 'User not found. Type correct email and password'
#   end
# end