require_relative '../../spec_helper'
require_relative 'fixtures/classes'

describe "Numeric#zero?" do
  before :each do
    @obj = NumericSpecs::Subclass.new
  end

  it "returns true if self is 0" do
    @obj.should_receive(:==).with(0).and_return(true)
    @obj.should.zero?
  end

  it "returns false if self is not 0" do
    @obj.should_receive(:==).with(0).and_return(false)
    @obj.should_not.zero?
  end
end
