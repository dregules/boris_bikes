require 'user'

describe User do
  it "responds to method #report" do
    expect(subject).to respond_to(:report)
  end
end