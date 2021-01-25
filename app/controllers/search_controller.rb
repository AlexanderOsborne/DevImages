class SearchController < ApplicationController
  include ImagesHelper
  
  def index

  end

  def new

  end

  def create
    search = params[:search]
    @results = parse_image_search(search)
    render :index
  end
end