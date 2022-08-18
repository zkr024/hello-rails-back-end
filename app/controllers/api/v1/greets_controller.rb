class Api::V1::GreetsController < ApplicationController
  def index
    @greets = Greet.all
    
    render json: @greets
  end

  def show
    @greet = Greet.find(params[:id])

    render json: @greet
  end
end
