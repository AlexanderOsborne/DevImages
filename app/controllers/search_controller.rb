class SearchController < ApplicationController

  # @service = UnsplashService.new
  
  def index

  end

  def new

  end

  def create
    search = params[:search]
    require 'pry'; binding.pry
    UnsplashService.api_search(search)
  end
end