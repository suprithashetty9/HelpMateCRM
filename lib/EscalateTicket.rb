module EscalateTicket
    def self.check(typeid)
    puts "escalate library #{typeid}"
        if typeid ==1
            puts "at type 1 to execute"
            st = ActiveRecord::Base.connection.raw_connection.prepare("update tickets set employee_id='2' where ticket_type_id='1';")
st.execute()
puts "esexcutes#{st}"
st.close
   elsif typeid ==2
            st = ActiveRecord::Base.connection.raw_connection.prepare("update tickets set employee_id=3 where ticket_type_id='2'")
st.execute()
st.close
end
end
end
