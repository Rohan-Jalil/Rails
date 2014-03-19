class ChargesController < ApplicationController
 
  def index
    @successful_charges = Charge.get_successful_charges
    @disputed_charges = Charge.get_disputed_charges
    @failed_charges = Charge.get_failed_charges
  end
 
end
