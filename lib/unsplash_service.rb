require 'json'

module UnsplashService

  def new()

  end
  def self.api_search(search)
    search_results = Unsplash::Photo.search(search)
  end
end