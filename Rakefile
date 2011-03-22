begin; require 'psych'; rescue Object; nil end
require 'rubygems'
require './lib/b64url.rb'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "b64url"
    gemspec.summary = "Integer to/from base64url converter"
    gemspec.email = "pierre@moodstocks.com"
    gemspec.homepage = "http://moodstocks.com"
    gemspec.description = "Encode and decode integers to/from base64url using the alphabet from RFC 4648"
    gemspec.authors = ["Pierre Chapuis"]
    gemspec.files = FileList['lib/**/*.rb']
  end
rescue LoadError
  puts "Jeweler is not available, please install it first."
end
