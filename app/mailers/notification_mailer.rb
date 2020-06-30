class NotificationMailer < ApplicationMailer
    def notify(id)
        @contact = Contact.find(id)
        mail(to: 'indra.chemistry@gmail.com', cc:'indrajit.naiya@kloctechnologies.co.in', subject: "Contact-Us")
    end
end
