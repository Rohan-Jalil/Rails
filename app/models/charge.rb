class Charge < ActiveRecord::Base
  belongs_to :customer
  
  def self.get_successful_charges
    Charge.where(paid: true, refunded: false)
  end
  
  def self.get_disputed_charges
    Charge.where(paid: false, refunded: true)
  end
  
  def self.get_failed_charges
    Charge.where(paid: false, refunded: false)
  end
end
