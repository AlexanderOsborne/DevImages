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

  def new

  end

  def create
    
    image = Image.new(image_params_create)
    require 'pry'; binding.pry
    if image.save
      flash[:success] = "Image Saved"
      redirect_to images_path
    else
      flash[:error] = "Image Not Saved"
      redirect_to user_dashboard_path
    end
  end

  private
  def image_params_create
    params.permit(:artist, :portfolio, :small, :full, :user_id)
  end
end
