class ItemsController < ApplicationController
  before_action :set_shopping_list, only: [:show, :create, :edit, :update, :destroy]
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def show
      
  end

  def edit
      
  end

  def create
    set_shopping_list
    @item = @list.items.create(item_params)
    redirect_to shopping_list_path(@list)
end

  def update
       
      if @item.update(item_params)
        redirect_to shopping_list_path(@list)
      else
        #flash message
        render 'edit'
      end
  end

    def index
      if current_user && params[:shopping_list_id].present?
        @list = ShoppingList.find_by(id: params[:shopping_list_id])
        #@user = current_user
        @items = Shopping_list.items.all
      else
        redirect_to user_shopping_lists_path
      end
    end

    def destroy
      
      @item.destroy
      
      redirect_to @list, notice: "Item removed."
    end


    private
    def item_params
        params.require(:item).permit(:name, :price, :user_id, :store_id, :shopping_list_id)
    end

    def set_shopping_list
        @list = ShoppingList.find(params[:shopping_list_id])
    end

    def set_item
        @item = @list.items.find(params[:id])
    end

    
end