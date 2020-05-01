class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(email: params[:user][:email])
        if @user || @user.authenticate(password: params[:user][:password])
            session[:username] = params[:username]
            redirect_to '/'
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.delete :username
      end
end