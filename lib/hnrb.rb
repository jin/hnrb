require 'json'
require 'net/http'

require 'hnrb/user'
require 'hnrb/item'

module HNrb
  class APIWrapper

    BASE_URL = "https://hacker-news.firebaseio.com/v0/".freeze

    def fetch_json_at(url)
      resp = Net::HTTP.get_response(URI.parse(url))
      begin
        JSON.parse(resp.body)
      rescue
        resp.body
      end
    end

    def get_item(item_id)
      Item.new(fetch_json_at "#{BASE_URL}item/#{item_id}.json")
    end

    def get_user(username)
      User.new(fetch_json_at "#{BASE_URL}user/#{username}.json")
    end

    def get_top_stories
      fetch_json_at "#{BASE_URL}topstories.json"
    end

    def get_max_item_id
      fetch_json_at "#{BASE_URL}maxitem.json"
    end

    def get_changed_items_and_profiles
      fetch_json_at "#{BASE_URL}updates.json"
    end
  end
end
