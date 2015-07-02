require 'spec_helper'
require 'ootalk/power'

describe 'powers' do
  before do
    cons1 = OoTalk::Constant.new(1)
    cons2 = OoTalk::Constant.new(2)
    cons3 = OoTalk::Constant.new(3)
    cons4 = OoTalk::Constant.new(0)
    powers1 = OoTalk::Power.new(cons1, cons2)
    powers2 = OoTalk::Power.new(cons2, cons3)
    powers3 = OoTalk::Power.new(cons3, cons4)
  end

  it 'initialize' do
    expect(powers1).to_not be_nil
    expect(powers2).to_not be_nil
    expect(powers3).to_not be_nil
  end

  it 'exec' do
    expect(powers1.exec).to be 1
    expect(powers2.exec).to be 8
    expect(powers3.exec).to be 1
  end
end
