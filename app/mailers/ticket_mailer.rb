class TicketMailer < ApplicationMailer
        def send_ticket_mail
        mail(to:"saimalla7@gmail.com",from:"helpdesktool123@gmail.com",subject:"testingemail",message:"hiee!")
        end
end
