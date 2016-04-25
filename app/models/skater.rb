class Skater < ActiveRecord::Base
  has_many :payments, dependent: :destroy
  has_many :deposits, through: :payments
end
