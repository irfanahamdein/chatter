module Lita
  module Handlers
    class Ping < Handler
      route(/ping/, :pong,
        help: { "ping" => "replies back with pong" })

      def pong response
        response.reply "pong"
      end

      Lita.register_handler(self)
    end
  end
end
