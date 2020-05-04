class UsersController < ApplicationController
    before_action :require_login, only:[:edit, :show, :update, :destroy]

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            #raise params.inspect
            redirect_to user_path(@user)
        else
            render 'users/new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :admin)  
    end

end
