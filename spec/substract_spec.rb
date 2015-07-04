require 'spec_helper'
require 'ootalk/substract'

describe 'substract' do
  cons1 = OoTalk::Constant.new(5)
  cons2 = OoTalk::Constant.new(4)
  cons3 = OoTalk::Constant.new(1)

  substract1 = OoTalk::Substract.new(cons1, cons2)
  substract2 = OoTalk::Substract.new(cons2, cons3)

  it 'new' do
    expect(substract1).to_not be_nil
    expect(substract2).to_not be_nil
  end

  it 'exec' do


    expect(substract1.exec).to be 1
    expect(substract2.exec).to be 3
  end
end
