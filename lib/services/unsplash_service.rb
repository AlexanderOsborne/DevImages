require 'json'

module Services::UnsplashService

  def self.api_search(search)
    search_results = Unsplash::Photo.search(search)
    # JSON.parse(search_results.to_json)[0]["attributes"]["table"].keys
  end
end