class TicketMailerController < ApplicationController
    def index
    end
    
    def send_mail
        TicketMailer.send_ticket_mail.deliver_now!
        #render :text => "Mail sent"
    end
end