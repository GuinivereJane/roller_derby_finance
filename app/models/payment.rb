class Payment < ActiveRecord::Base
  belongs_to :skater
  belongs_to :deposit
  belongs_to :payment_type

end
