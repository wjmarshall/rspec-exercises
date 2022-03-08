require "counter"

RSpec.describe Counter do
  it "increases count to user's input" do
    count = Counter.new
    count.add(7)
    result = count.report
    expect(result).to eq("Counted to 7 so far.")
  end

  it "increases count to 2 user inputs" do
    count = Counter.new
    count.add(7)
    count.add(3)
    result = count.report
    expect(result).to eq("Counted to 10 so far.")
  end

end