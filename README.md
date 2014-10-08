# HNrb - A ruby wrapper for Hacker News API at Firebase

See https://github.com/HackerNews/API for full documentation.

## Installation

``sh
gem install hnrb 
``

### Usage:

``rb
2.1.2 :001 > require 'hnrb'
 => true
2.1.2 :002 > hn = HNrb.new
 => #<HNrb:0x007f93ac846e48>
2.1.2 :003 > hn.get_user("pg")
 => {"about"=>"Bug fixer.", "created"=>1160418092, "delay"=>2, "id"=>"pg", "karma"=>155040, "submitted"=>[7494555, 7494520, 7494119 ... 
2.1.2 :004 > hn.get_item("42")
 => {"by"=>"sergei", "id"=>42, "kids"=>[28355, 28717, 454463], "score"=>5, "time"=>1160532601, "title"=>"An alternative to VC: &#34;Selling In&#34;", "type"=>"story", "url"=>"http://www.venturebeat.com/contributors/2006/10/10/an-alternative-to-vc-selling-in/"}
2.1.2 :014 > hn.get_max_item_id
 => "8426846"
2.1.2 :015 > hn.get_top_stories
 => [8426148, 8426349, 8426558, ... ]
2.1.2 :016 > hn.get_changed_items_and_profiles
 => {"items"=>[8426848, 8426299, 8426849, ... ], "profiles"=>["PhasmaFelis", "roldie", "Chirael", ... ]}
``

### License

http://opensource.org/licenses/MIT}`

