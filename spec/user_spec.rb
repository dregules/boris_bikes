require 'user'

describe User do
  it "responds to method #report" do
    expect(subject).to respond_to(:report).with(1).argument
  end
end