class ShoppingListsController < ApplicationController
  before_action :require_login
  before_action :set_list, only: [:edit, :update, :destroy, :show]

  def index
    if params[:user_id].present?
      @user = current_user
      @lists = current_user.shopping_lists.all.recent.paginate(page: params[:page], per_page: 3)      
    else
      redirect_to user_shopping_lists_path
    end
  end


  def show
  end
  

  def new
    @list = current_user.shopping_lists.build
  end

  def create
    @list = ShoppingList.new(list_params)

    if @list.save
      redirect_to shopping_list_path(@list)
    else
      render :new
    end
  end

  def edit
    
    @user = current_user
    
  end

  def update
    @user = current_user
    @list.update(list_params)
    redirect_to shopping_list_path(@list)
  end

  def destroy
    @list = ShoppingList.find(params[:id])
    @list.destroy
    redirect_to user_shopping_lists_path(current_user)
  end

  private
  def list_params
    params.require(:shopping_list).permit(:name, :budget, :store_id, :user_id)
  end

  def set_list
    @list = ShoppingList.find(params[:id])
  end

  

end
