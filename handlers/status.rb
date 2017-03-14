module Lita
  module Handlers
    class Status < Handler
      route(/status/i, :status, command: true,
        help: { "status" => "replies with current status of upgrad" })

      def status response
        http_response = http.get "http://irfan.chandler.ai/chatter"
        status_message = MultiJson.load http_response.body
        response.reply status_message
      end

      Lita.register_handler(self)
    end
  end
end
