class Deposit < ActiveRecord::Base
  has_many :payments
  has_many :skaters, through: :payments

end
