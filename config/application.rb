require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module RestTester
  class Application < Rails::Application
    config.load_defaults 8.1

    # Standalone script, not part of the Rails autoload graph.
    Rails.autoloaders.main.ignore(Rails.root.join("app/script"))
  end
end

