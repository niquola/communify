# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

#read vars from env dir
Dir[File.expand_path('./env/*', File.dirname(__FILE__))].each do |path|
  ENV[File.basename(path)] ||= File.read(path).chomp
end

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
