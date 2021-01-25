class SearchController < ApplicationController

  
  def index

  end

  def new

  end

  def create
    search = params[:search]
    require 'pry'; binding.pry
    results = UnsplashService.api_search(search)
  end
end