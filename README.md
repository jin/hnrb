# HNrb - A ruby wrapper for Hacker News API at Firebase

See https://github.com/HackerNews/API for full documentation.

RubyGems: https://rubygems.org/gems/hnrb

This gem is under development and is not production ready.

## Installation

```sh
gem install hnrb
```

### Changelog

```
v0.0.4
- Namespaced all classes within the HNrb module.
- Main class is renamed from HNrb to APIWrapper.
```

### Usage:

```rb
2.1.2 :001 > require 'hnrb'
 => true
2.1.2 :002 > hn = HNrb::APIWrapper.new
 => <HNrb::APIWrapper:0x007f93ac846e48>
2.1.2 :003 > pg = hn.get_user("pg")
 => <HNrb::User:0x007fe7e18ecd50 @about="Bug fixer.", @created=1160418092, @delay=2, @id="pg",
    @karma=155040, @submitted=[7494555, 7494520, 7494119, .. ]>
2.1.2 :004 > dropbox = hn.get_item("8863")
 => <HNrb::Item:0x007fe7e104a238 @by="dhouston", @id=8863, @kids=[8952, 9224, ... ], @score=111,
    @time=1175714200, @title="My YC app: Dropbox - Throw away your USB drive", @type="story",
    @url="http://www.getdropbox.com/u/2/screencast.html">
2.1.2 :005 > hn.get_max_item_id
 => "8426846"
2.1.2 :006 > hn.get_top_stories
 => [8426148, 8426349, 8426558, ... ]
2.1.2 :007 > hn.get_changed_items_and_profiles
 => {"items"=>[8426848, 8426299, 8426849, ... ], "profiles"=>["PhasmaFelis", "roldie", "Chirael", ... ]}
```

### License

http://opensource.org/licenses/MIT
