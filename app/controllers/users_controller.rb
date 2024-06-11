class UsersController < ApplicationController
   # before_action :fetch_trainer
    before_action :fetch_user

    def new
        @user = User.new
    end

    def index
        @users = User.all 
    end

    def edit
        @user = User.find params[:id]
    end

    def create
        @user = User.create user_params
        if @user.save 
            session[:user_id] = user.id 
            redirect_to @user
        else 
            render :new
        end
    end 

    def show
        @user = User.find params[:id]
    end

    def update
        user = User.find params[:id]
        user.update user_params
        redirect_to user
    end

    def destroy
        user = User.find[:id]
        user.destroy
        redirect_to users_path
    end

    private
    def user_params
        params.require(:user).permit(:name, :image, :email, :favourite, :address, :password, :password_confirmation)
    end
end
