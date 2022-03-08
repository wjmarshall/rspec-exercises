require "present"

RSpec.describe Present do
  it "wraps and unwraps a value" do
    present = Present.new
    present.wrap("Guitar")
    expect(present.unwrap).to eq("Guitar")
  end

  it "fails if we unwrap without wrapping first" do
    present = Present.new
    expect { present.unwrap }.to raise_error("No contents have been wrapped.")
  end

  it "fails if we've already wrapped it" do
    present = Present.new
    present.wrap(7)
    expect { present.wrap(4) }.to raise_error("A contents has already been wrapped.")
  end
end