module Lita
  module Handlers
    class Test < Handler
      route(/\btest (.+) with (.+) on (.+) please\b/i, :test, command: true, help: { "test app with url on chrome please?" => "Tests app." })

      def test response
        response.reply "Initialised to test #{app} with #{url} on #{browser} please wait ...."
       end

      Lita.register_handler(self)
    end
  end
end
