class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)
        respond_to do |format|
          if @contact.save
            format.html { redirect_to contacts_url, notice: "Thanks for contact, We'll get back to you shortly."  }
          else
            format.html { render :new, notice: 'Error occur due to submit'}
          end
        end
    end
    
    private
    def contact_params
        params.require(:contact).permit(:first_name, :last_name, :email, :phone, :message)
    end
end