class ShoppingListsController < ApplicationController
  before_action :require_login
  
  def index
    if params[:user_id].present?
      @user = current_user
      @lists = current_user.shopping_lists.all
    else
      redirect_to user_shopping_lists_path
    end
  end


  def show
    @list = current_user.shopping_lists.find(params[:id])
  end
  

  def new
    @list = current_user.shopping_lists.build
  end

  def create
    @list = ShoppingList.new(list_params)

    if @list.save
      redirect_to user_shopping_lists_path
    else
      render :new
    end
  end

  

  def edit
    
  end

  private
  def list_params
    params.require(:shopping_list).permit(:name, :store_id, :user_id)
  end

  

end
