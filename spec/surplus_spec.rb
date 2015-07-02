require 'spec_helper'
require 'ootalk/surplus'

describe 'surpluses' do
  before do
    cons1 = OoTalk::Constant.new(15)
    cons2 = OoTalk::Constant.new(3)
    cons3 = OoTalk::Constant.new(4)
    surpluses1 = OoTalk::Surplus.new(cons1, cons2)
    surpluses2 = OoTalk::Surplus.new(cons1, cons3)
    surpluses3 = OoTalk::Surplus.new(cons2, cons3)
  end

  it 'initialize' do
    expect(surpluses1).to_not be_nil
    expect(surpluses2).to_not be_nil
    expect(surpluses3).to_not be_nil
  end

  it 'exec' do

    expect(surpluses1.exec).to be 0
    expect(surpluses2.exec).to be 3
    expect(surpluses3.exec).to be 3
  end
end
