class Skater < ActiveRecord::Base
  has_many :payments
  has_many :deposits, through: :payments
end
