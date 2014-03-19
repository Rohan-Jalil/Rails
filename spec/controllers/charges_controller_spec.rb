require 'spec_helper'

describe ChargesController do
  
  before(:all) {
    load "#{Rails.root}/db/seeds.rb"
    @successful_charges = Charge.get_successful_charges
    @disputed_charges = Charge.get_disputed_charges
    @failed_charges = Charge.get_failed_charges
  }
  
  it "have proper number of charges of every kind" do
    @successful_charges.should have(10).items
    @disputed_charges.should have(5).items
    @failed_charges.should have(5).items
  end
  
  after(:all) {
    Charge.delete_all
  }
end
