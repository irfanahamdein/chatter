require './handlers/ping.rb'
require './handlers/helpers.rb'
require './handlers/test.rb'
require './handlers/status.rb'

Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "chatter"

  # The locale code for the language to use.
   config.robot.locale = :en_US
   config.http.port = 8888

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :debug

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :slack

  ## Slack
  config.robot.admins = ["XXXXX"]
  config.adapters.slack.token = "xxxxxxxx"
  config.adapters.slack.link_names = true
  config.adapters.slack.parse = "full"
  config.adapters.slack.unfurl_links = false
  config.adapters.slack.unfurl_media = false

  ## Example: Set options for the Redis connection.
  config.redis.host = "127.0.0.1"
  config.redis.port = 6379

  ## Custom port
  config.http.port = 8888

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end
