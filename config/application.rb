require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Communify
  class Application < Rails::Application
    config.cache_store = :dalli_store
    config.autoload_paths << Rails.root.join("app", "use_cases")
    config.autoload_paths << Rails.root.join("app", "repositories")
    config.assets.paths << Rails.root.join("vendor", "assets", "components")
    config.assets.paths << Rails.root.join("vendor", "assets", "components", "bootstrap", "less")
    config.assets.paths << Rails.root.join("vendor", "assets", "components", "font-awesome", "less")
  end
end
