class ApplicationController < ActionController::Base
    before_action :fetch_user
    
    def fetch_user # Function 
        #variable that holds the current user by finding the user by the :id , check the session:id 
        @current_user = User.find_by :id => session[:user_id] if session[:user_id].present? # if the current session[user_id] is present
        session[:user_id] = nil unless @current_user.present? # The session[:user_id] is set to nil unless there is a current user
    end

    def fetch_trainer 
        @current_trainer = Trainer.find_by :id => session[:trainer_id] if session[:trainer_id].present? # This find the trainer id
        session[:trainer_id] = nil unless @current_trainer.present?
    end
    
    def check_for_login  
        redirect_to login_path unless @current_user.present?
    end


    def check_for_admin
        redirect_to login_path unless @current_trainer.present?
    end
end 
