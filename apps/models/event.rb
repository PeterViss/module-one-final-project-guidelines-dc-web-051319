class Event < ActiveRecord::Base
  belongs_to :artist
  has_many :tickets
  has_many :fans, through: :tickets



  def sold_out
    if self.ticket_amount == 0
      self.status == 'closed'
    else
      self.status == 'open'
    end

  end

  def availability
    return @ticket_amount
  end

  # def artist
  #   return self.artist
  # end

  def fans
    tickets = Ticket.all.select{|ticket| ticket.event == self }
    tickets.collect{|ticket| ticket.fan }
  end
end
