require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Profy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # ActionView::Template::Error (Missing host to link to! Please provide the :host parameter, set default_url_options[:host], or set :only_path to true):
    config.action_mailer.default_url_options = { host: 'https://dackelteckelprofy.herokuapp.com/' }
  end
end
