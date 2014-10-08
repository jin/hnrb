require 'json'
require 'net/http'

class HNrb 

  BASE_URL = "https://hacker-news.firebaseio.com/v0/"

  def fetch_json_at(url)
    resp = Net::HTTP.get_response(URI.parse(url)) 
    begin
      JSON.parse(resp.body)
    rescue
      resp.body
    end
  end

  def send_get_request_to(endpoint)
    begin
      fetch_json_at endpoint
    rescue
      raise "The requested resource is not available"
    end
  end

  def get_item(item_id)
    send_get_request_to BASE_URL + "item/#{item_id}.json" 
  end

  def get_user(username)
    send_get_request_to BASE_URL + "user/#{username}.json"
  end

  def get_top_stories
    send_get_request_to BASE_URL + "topstories.json"
  end

  def get_max_item_id
    send_get_request_to BASE_URL + "maxitem.json"
  end

  def get_changed_items_and_profiles
    send_get_request_to BASE_URL + "updates.json"
  end

end
