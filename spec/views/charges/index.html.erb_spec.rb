require 'spec_helper'
describe "charges/index" do
  
  #Just used basic rspec views testing not Capybara for proper testing of views here
  it "renders charges list" do
    #assign :failed_charges, []
    assign(:failed_charges, [stub_model(Charge, :amount => 100, :currency => "usd", :created_at => Time.now, :customer_id => 1)])
    assign(:disputed_charges, [stub_model(Charge,:amount => 100, :currency => "usd", :created_at => Time.now,  :customer_id => 1)])
    assign(:successful_charges, [stub_model(Charge, :amount => 100, :currency => "usd",:created_at => Time.now,  :customer_id => 1)])
    render
    expect(rendered).to include("Failed Charges")
    expect(rendered).to include("Disputed Charges")
    expect(rendered).to include("Successful Charges")
  end
end