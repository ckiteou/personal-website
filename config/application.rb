require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PersonalWebsite
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.action_mailer.sendmail_settings = {
      address: "smtp.gmail.com",
      port: 587,
      domain: "personal-website.com",
      user_name: "ckiteou22@gmail.com",
      password: "loggers0051",
      authentication: :plain,
      enable_starttls_auto: true
    }

    config.action_mailer.perform_deliveries = true

    config.action_mailer.default_url_options = {
      host: "gmail.com"
    }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
