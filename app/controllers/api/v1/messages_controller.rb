class Api::V1::MessagesController < ApplicationController
  before_action :set_message, only: [:show, :update, :destroy]

  def index
    @messages = Message.all
  end

  def show; end

  def create
    @message = Message.new(message_params)
    @message.save!
    render json: @message
  end

  def update
    @message.update(message_params)
    render json: @message
  end

  def destroy
    @message.destroy
    render json: {message: 'Message destroy successfull'}
  end


  private

  def set_message
    @message = Message.find_by!(id: params[:id])
  end

  def message_params
    params.require(:message).permit(:contact_id, :content, :kind)
  end
end
