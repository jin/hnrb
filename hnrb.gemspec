lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'hnrb/version'

Gem::Specification.new do |s|
  s.name        = 'hnrb'
  s.version     =  HNrb::VERSION
  s.summary     = "A ruby interface for Hacker News API at Firebase." 
  s.description = s.summary
  s.authors     = ["Jingwen Chen"]
  s.email       = 'jin@crypt.sg'
  s.files       = ["lib/hnrb.rb"]
  s.homepage    =
    'http://rubygems.org/gems/hnrb'
  s.license       = 'MIT'
  s.require_paths = %w(lib)
  s.files += Dir.glob('lib/**/*.rb')
  s.required_rubygems_version = ">= 1.3.6"
end
