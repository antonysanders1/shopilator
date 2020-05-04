class ShoppingListsController < ApplicationController
  before_action :require_login
  
  def index
    if params[:user_id].present?
      @user = User.find_by(id: params[:user_id])
      @shopping_lists = @user.shopping_lists
    else
      @shopping_lists = Shopping_list.all
    end
    #binding.pry
  end
  
  def new
    @user = User.new
  end

end
