class SessionController < ApplicationController
  # before_action :fetch_user

  def new
    # @user = User.find params[:id]
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id) # This will take you to session#index 
    else 
      redirect_to root_path # This will take you to users#index.html 
    end
  end

  def destroy
    session[:user_id] = nil 
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :favourite, :address, :password, :password_confirmation)
  end

end
