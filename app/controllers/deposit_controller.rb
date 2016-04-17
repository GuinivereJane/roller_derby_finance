class DepositController < ApplicationController
  has_many :payments
  has_many :skaters, through: :reviews

end
