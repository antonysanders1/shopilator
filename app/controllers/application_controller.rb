class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

    def require_login
        if !logged_in?
            redirect_to login_path
        end
    end

    def logged_in?
        session[:user_id]
    end
end
