class Tickets < ActiveRecord::Base
  belongs_to :events
  belongs_to :fans 
end
