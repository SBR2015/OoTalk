require 'spec_helper'
require 'ootalk/divide'

describe 'divides' do
  before do
    cons1 = OoTalk::Constant.new(15)
    cons2 = OoTalk::Constant.new(5)
    cons3 = OoTalk::Constant.new(3)
    @divides1 = OoTalk::Divide.new(cons1, cons2)
    @divides2 = OoTalk::Divide.new(cons2, cons3)
    @divides3 = OoTalk::Divide.new(cons1, cons3)
  end

  it 'new' do
    expect(@divides1).to_not be_nil
    expect(@divides2).to_not be_nil
    expect(@divides3).to_not be_nil
  end

  it 'exec' do
    expect(@divides1.exec).to be 3
    expect(@divides2.exec).to be 1
    expect(@divides3.exec).to be 5
  end
end
