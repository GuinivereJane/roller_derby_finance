class Payment < ActiveRecord::Base
  belongs_to :skater
  belongs_to :deposit

end
