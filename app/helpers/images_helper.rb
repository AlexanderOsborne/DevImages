module ImagesHelper

  def parse_image_search(search)
  results = UnsplashService.api_search(search)
  json_array = make_json(results)
  @parsed_array = parse_json(json_array)

  @hash_array = @parsed_array.map do |parse|
    create_hash(parse)
    end
  end

  def make_json(results)
    results.map do |result|
      result.to_json
    end
  end
  
  def parse_json(json_array)
    json_array.map do |json|
      JSON.parse(json, symbolize_names: true)
    end
  end

  def create_hash(parse)
    h = {}
    h[:name] = find_name(parse)
    h[:id] = find_id(parse)
    h[:portfolio] = find_portfolio(parse)
    h[:small] = find_small(parse)
    h[:full] = find_full(parse)
    h
  end

  def find_id(parse)
    parse[:attributes][:table][:id]
  end

  def find_name(parse)
    parse[:attributes][:table][:user][:name]
  end

  def find_portfolio(parse)
    parse[:attributes][:table][:user][:portfolio_url]
  end

  def find_small(parse)
    parse[:attributes][:table][:urls][:small]
  end

  def find_full(parse)
    parse[:attributes][:table][:urls][:full]
  end
end
