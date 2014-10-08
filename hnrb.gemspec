$LOAD_PATH.unshift File.dirname(__FILE__)
require 'lib/hnrb/version'

Gem::Specification.new do |s|
  s.name        = 'hnrb'
  s.version     =  HNrb::VERSION
  s.summary     = "A ruby interface for Hacker News API at Firebase." 
  s.description = "This rubygem aims to provide an easier way to fetch data from the Hacker News API, especially if you're building ruby apps."
  s.authors     = ["Jingwen Chen"]
  s.email       = 'jin@crypt.sg'
  s.files       = ["lib/hnrb.rb"]
  s.homepage    =
    'http://rubygems.org/gems/hnrb'
  s.license       = 'MIT'
  s.required_rubygems_version = ">= 1.3.6"
end
