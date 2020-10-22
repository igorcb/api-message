class Api::V1::MessagesController < ApplicationController
  before_action :set_message, only: [:show]

  def index
    @messages = Message.all
  end

  def show; end

  def create
    @message = Message.new(message_params)
    @message.save!
    render json: @message
  end

  private

  def set_message
    @message = Message.find_by!(id: params[:id])
  end

  def message_params
    params.require(:message).permit(:contact_id, :content, :kind)
  end
end
