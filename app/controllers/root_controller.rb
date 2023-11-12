class RootController < ApplicationController
  def index
    msg = Message.order('RANDOM()').first
    render json: { text: msg.greeting }
  end
end
