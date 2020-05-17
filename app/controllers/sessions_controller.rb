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
            @user.errors.add(:password, :invalid, message: "is inccorect")
            render '/sessions/new'
        end
    end

    def destroy
        reset_session
        redirect_to login_path
      end

      def omniauth
        @user = User.from_omniauth(auth)
        if @user.save
        session[:user_id] = @user.id
        redirect_to @user
        else
          redirect_to new_user_path
        end
      end


      private

      def auth
        request.env['omniauth.auth']
      end
end