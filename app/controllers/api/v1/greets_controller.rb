module Api
  module V1
    class GreetsController < ApplicationController
      def index
        @greet = Greet.find(rand(1..5))

        render json: [@greet]
      end
    end
  end
end
