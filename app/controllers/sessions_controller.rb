class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_shopping_lists_path(@user)
        else
            @user.errors.add(:password, :invalid, message: "Password inccorect")
            redirect_to '/login'
        end
    end

    def destroy
        reset_session
        redirect_to login_path
      end
end