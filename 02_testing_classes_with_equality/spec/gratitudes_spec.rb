require "gratitudes"

RSpec.describe Gratitudes do
  it "returns formatted gratitude input" do
    gratitude = Gratitudes.new
    gratitude.add("Sunny Weather")
    result = gratitude.format
    expect(result).to eq("Be grateful for: Sunny Weather")
  end

  it "returns multiple formatted gratitude inputs" do
    gratitude = Gratitudes.new
    gratitude.add("Sunny Weather")
    gratitude.add("Friends")
    gratitude.add("Family")
    result = gratitude.format
    expect(result).to eq("Be grateful for: Sunny Weather, Friends, Family")
  end  
end