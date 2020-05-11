class ShoppingListsController < ApplicationController
  before_action :require_login
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    if params[:user_id].present?
      @user = current_user
      @lists = current_user.shopping_lists.all.recent.paginate(page: params[:page], per_page: 10)      
    else
      redirect_to user_shopping_lists_path
    end
  end


  def show
    @user = current_user
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
    set_list
  end

  def update
    set_list
  end

  private
  def list_params
    params.require(:shopping_list).permit(:name, :store_id, :user_id)
  end

  def set_list
    @list = current_user.shopping_lists.find(params[:id])
  end

  

end
