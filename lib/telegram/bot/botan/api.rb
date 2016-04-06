module Telegram
  module Bot
    module Botan
      class Api
        attr_reader :token
        attr_reader :http

        def initialize(token)
          @token = token
          @http = Faraday.new(url: 'https://api.botan.io') do |faraday|
            faraday.request  :url_encoded
            faraday.response :logger
            faraday.adapter  Faraday.default_adapter
          end
        end

        def track(event, uid, properties = {})
          http.post do |req|
            req.url "/track?token=#{token}&name=#{event}&uid=#{uid}"
            req.headers['Content-Type'] = 'application/json'
            req.body = properties.to_json
          end
        end
      end
    end
  end
end
