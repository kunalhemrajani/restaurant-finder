defmodule Zomato do
  def get_recipes do
    url = "https://developers.zomato.com/api/v2.1/search"
    # todo get zomato key from the env file
    
    headers = [ "Accept: application/json", "user-key: #{key}" ]
    {:ok, response} = HTTPoison.get(url, headers)
  end

end

# curl -X GET --header "Accept: application/json" --header "user-key: 295cfbc57a6427625faa4cb7d538c445" "https://developers.zomato.com/api/v2.1/search"
