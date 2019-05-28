class Fans < ActiveRecord::Base
  has_many :tickets
end
