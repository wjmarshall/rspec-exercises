require "string_builder"

RSpec.describe StringBuilder do
  it "takes one string and returns string length" do
    string = StringBuilder.new
    string.add("this is a string")
    result = string.size
    expect(result).to eq 16
  end

  it "takes one string and returns string" do
    string = StringBuilder.new
    string.add("this is a string")
    result = string.output
    expect(result).to eq "this is a string"
  end

  it "takes one string and returns string and length" do
    string = StringBuilder.new
    string.add("this is a string")
    result = [string.output, string.size]
    expect(result).to eq ["this is a string", 16]
  end
end