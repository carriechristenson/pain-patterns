module Api
  module V1
    class ApiController < ActionController::Base
      before_filter :restrict_access
      respond_to :json

      private

      def restrict_access
        authenticate_or_request_with_http_token do |token, options|
          ApiKey.exists?(access_token: token)
        end
      end
    end
  end
end