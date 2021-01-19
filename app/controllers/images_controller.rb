class ImagesController < ApplicationController

  def index
    if current_user
     @images = current_user.images
     render :index
    else 
     flash[:warning] = "You must be logged in to see this page"
     redirect_to new_user_path
    end
  end
end
