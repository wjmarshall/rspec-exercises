require "report_length"

RSpec.describe "#report_length" do
  it "should accept a string as an argument and return its length in characters" do
    result_1 = report_length("Hello, world")
    result_2 = report_length("Goodbye")
    expect(result_1).to eq("This string was 12 characters long.")
    expect(result_2).to eq("This string was 7 characters long.")
  end
end