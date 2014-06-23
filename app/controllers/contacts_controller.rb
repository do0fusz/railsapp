class ContactsController < ApplicationController
  def new
  	@contact = Contact.new(params[:contact])
    @contact.request = request

    if @contact.valid? && @contact.deliver
      flash.now[:success] = "Succes, Uw mail is ontvangen"
    else
      flash.now[:errors] = "Fout... Uw mail is niet verzonden"
    end
  end
end
