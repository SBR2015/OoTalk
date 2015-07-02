require 'spec_helper'
require 'ootalk/times'

describe 'times' do
  cons1 = OoTalk::Constant.new(1)
  cons2 = OoTalk::Constant.new(2)
  cons3 = OoTalk::Constant.new(3)
  let(:times1) {OoTalk::Times.new(cons1, cons2)}
  let(:times2) {OoTalk::Times.new(cons2, cons3)}

  it 'new' do
    expect(times1).to_not be_nil
    expect(times2).to_not be_nil
  end

  it 'exec' do
    expect(times1.exec).to be 2
    expect(times2.exec).to be 6
  end
end
