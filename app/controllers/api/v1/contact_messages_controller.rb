class Api::V1::ContactMessagesController < ApplicationController
  def create
    message = Contact.new(message_params)
    if message.save
      render json: { status: "success" }, status: :created
    else
      render json: { status: "error", errors: message.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:contact_message).permit(:name, :email, :message)
  end
end
