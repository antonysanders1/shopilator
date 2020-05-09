class WebsiteController < ApplicationController
  
  def index
    if current_user
      redirect_to user_shopping_lists_path(current_user.id)
    else
      render :index
    end
  end


end
