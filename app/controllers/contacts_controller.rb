class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
    @contact.save
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :lastmeer, :frequency, :warning)
  end
end