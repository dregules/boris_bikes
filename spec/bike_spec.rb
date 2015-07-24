require 'bike'

describe Bike do
  it "Responds to working" do
    expect(subject).to respond_to :working?
  end

  it " Responds to #report_broken" do
    expect(subject).to respond_to :report_broken
  end

  it " Responds to #broken?" do
    bike = Bike.new
    expect(bike).to respond_to :broken?

  end

  it " gets broken when reported as broken" do
    bike = Bike.new
    bike.report_broken
    expect(bike).to be_broken

  end
end