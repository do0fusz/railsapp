class ContactsController < ApplicationController
  def new
  	@contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.valid?
      flash.now[:success] = "Succes, Uw mail is ontvangen"
    else
      flash.now[:errors] = "Fout... Controleer uw e-mail adres"
    end
  end

  def create
  	@contact = Contact.new(params[:contact])

  	if @contact.deliver
      flash.now[:success] = "Succes, Uw mail is ontvangen"
    else
      flash.now[:errors] = "Fout... Mail niet verzonden"
    end
  end
end
