require 'spec_helper'
require_relative '../lib/constant.rb'

describe 'Constant' do
  it "new" do
    cons = Constant.new(1)
    expect(cons).to_not be_nil
  end

  it "to_s" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(true)
    cons3 = Constant.new(false)
    cons4 = Constant.new(0.999)
    cons5 = Constant.new(-9)

    expect(cons1.to_s).to be == "1"
    expect(cons2.to_s).to be == "true"
    expect(cons3.to_s).to be == "false"
    expect(cons4.to_s).to be == "0.999"
    expect(cons5.to_s).to be == "-9"    
  end

  it "exec" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(true)
    cons3 = Constant.new(false)
    cons4 = Constant.new(0.999)
    cons5 = Constant.new(-9)

    expect(cons1.exec).to be 1
    expect(cons2.exec).to be true
    expect(cons3.exec).to be false
    expect(cons4.exec).to be == 0.999
    expect(cons5.exec).to be -9 
  end
end
