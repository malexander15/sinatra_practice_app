require_relative "../scheduler"

RSpec.describe Scheduler do
  it "should instantiate a Scheduler" do
    expect(Scheduler.new(Time.new, Time.new).class).to eq(Scheduler)
  end
end
