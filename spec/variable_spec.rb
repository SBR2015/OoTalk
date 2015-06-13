require 'spec_helper'
require_relative '../lib/variable.rb'

describe 'Variable' do
  it "new" do
    vars = Variable.new("x")
    expect(vars).to_not be_nil
  end

  it "to_s" do
    vars1 = Variable.new("x")
    vars2 = Variable.new("y")
    vars3 = Variable.new("z")
    
    expect(vars1.to_s.length).to be >= 0
    expect(vars2.to_s.length).to be >= 0
    expect(vars3.to_s.length).to be >= 0
  end
  
  it "exec" do
    vars1 = Variable.new("x")
    vars2 = Variable.new("y")
    vars3 = Variable.new("z")

    expect(vars1.exec).to be @@vars1["x"]
    expect(vars2.exec).to be @@vars2["y"]
    expect(vars3.exec).to be @@vars3["z"]
  end
end
