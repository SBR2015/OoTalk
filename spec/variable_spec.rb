require 'spec_helper'
require_relative '../lib/variable.rb'

describe 'Variable' do
  it "new" do
    vars = Variable.new(x)
    expect(vars).to_not be_nil
  end

  it "to_s" do
    vars1 = Variable.new("x")
    vars2 = Variable.new("y")
    vars3 = Variable.new("z")
   # vars4 = Variable.new(0.999)
   # vars5 = Variable.new(-9)
    
    expect(vars1.to_s.length).to be >= 0
    expect(vars2.to_s.length).to be >= 0
    expect(vars3.to_s.length).to be >= 0
  #  expect(cons4.to_s.length).to be >= 0
  #  expect(cons5.to_s.length).to be >= 0
  end
  
  it "exec" do
    expect(vars1.exec).to be $vars[@vars1]
   # expect(vars2.exec).to be >= 0
   # expect(vars3.exec).to be 
  end
end
