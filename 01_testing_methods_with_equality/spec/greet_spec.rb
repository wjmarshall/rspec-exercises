require "greet"

RSpec.describe "#greet" do
  it "accepts a name string as an argument and returns a greeting to that name" do
    result_1 = greet("Ian")
    result_2 = greet("Fran")
    expect(result_1).to eq("Hello, Ian!")
    expect(result_2).to eq("Hello, Fran!")
  end
end