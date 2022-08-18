# frozen_string_literal: false

module Api
  module V1
    class GreetsController < ApplicationController
      def index
        @greets = Greet.all

        render json: @greets
      end

      def show
        @greet = Greet.find(params[:id])

        render json: @greet
      end
    end
  end
end
