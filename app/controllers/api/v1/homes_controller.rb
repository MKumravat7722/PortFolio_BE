module Api
  module V1
    class HomesController < ApplicationController
      def index
        home = Home.first
        render json: home
      end
    end
  end
end
