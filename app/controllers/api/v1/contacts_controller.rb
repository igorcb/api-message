class Api::V1::ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show; end

  def create
    @contact = Contact.new(contact_params)
    @contact.save!
    render json: @contact
  end

  def update
    @contact.update(contact_params)
    render json: @contact
  end

  def destroy
    @contact.destroy
    render json: {message: 'Contact destroy successfull'}
  end

  private

  def set_contact
    @contact = Contact.find_by!(id: params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :address, :neighborhood, :city, :zip_code)
  end
end
