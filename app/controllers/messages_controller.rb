class MessagesController < ApplicationController
  def randon_greeting
    @greeting = Message.order("RANDOM()").first
    render json: { greeting: @greeting.greeting }
  end
end
