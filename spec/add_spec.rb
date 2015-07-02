require 'spec_helper'
require 'ootalk/add'

describe 'Add' do
  before do
    cons1 = OoTalk::Constant.new(1)
    cons2 = OoTalk::Constant.new(2)
    cons3 = OoTalk::Constant.new(3)
    @add1 = OoTalk::Add.new(cons1, cons2)
    @add2 = OoTalk::Add.new(cons2, cons3)
  end

  it 'initialize' do
    expect(@add1).to_not be_nil
    expect(@add2).to_not be_nil
  end

  it 'exec' do
    expect(@add1.exec).to be 3
    expect(@add2.exec).to be 5
  end
end
