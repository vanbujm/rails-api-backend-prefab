module Api
  module V1
    class EventsController < ApiController
      caches_action :index, expires_in: 5.minutes

      def index
        render json: Event.all, each_serializer: EventSerializer
      end
    end
  end
end
