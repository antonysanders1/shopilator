class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        @user.save
        #raise params.inspect
        redirect_to user_path(@user)
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :admin)  
    end

end
