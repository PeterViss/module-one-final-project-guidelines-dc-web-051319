class Event < ActiveRecord::Base
  belongs_to :artist
  has_many :tickets
  has_many :fans, through: :tickets



  def check_status(status)
      self.status = status
  end

  def change_ticket_amount(amount)
      self.ticket_amount -= amount
  end

  # def availability
  #   return @ticket_amount
  # end

  # def artist
  #   return self.artist
  # end

  def fans
    tickets = Ticket.all.select{|ticket| ticket.event == self }
    tickets.collect{|ticket| ticket.fan }
  end
end
