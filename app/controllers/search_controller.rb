class SearchController < ApplicationController

  def index

  end

  def new

  end

  def create
    search = params[:search]
    Services::UnsplashService.api_search(search)

  end
end