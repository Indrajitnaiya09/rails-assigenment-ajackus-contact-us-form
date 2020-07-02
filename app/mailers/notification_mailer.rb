class NotificationMailer < ApplicationMailer
    def notify(id)
        @contact = Contact.find(id)
        mail(to: 'info@ajackus.com', cc:'indrajitnaiya09@gmail.com', subject: "Contact-Us")
    end
end
