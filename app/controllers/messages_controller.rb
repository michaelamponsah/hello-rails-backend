class MessagesController < ApplicationController
  def random_greeting
    begin
      @greeting = Message.order("RANDOM()").first
      render json: { greeting: @greeting.greeting }
    rescue StandardError => e
      render json: {error: e.message, status: :unprocessable_entity}
    end
  end
end
