require 'spec_helper'
require 'ootalk/logarithm'

describe 'logarithms' do
  cons1 = OoTalk::Constant.new(10)
  cons2 = OoTalk::Constant.new(2)
  cons3 = OoTalk::Constant.new(3)
  cons4 = OoTalk::Constant.new(8)
  cons5 = OoTalk::Constant.new(0.2)
  cons6 = OoTalk::Constant.new(0.04)
  cons7 = OoTalk::Constant.new(1)

  logarithms1 = OoTalk::Logarithm.new(cons1, cons3)
  logarithms2 = OoTalk::Logarithm.new(cons2, cons4)
  logarithms3 = OoTalk::Logarithm.new(cons5, cons6)
  logarithms4 = OoTalk::Logarithm.new(cons1, cons5)
  logarithms5 = OoTalk::Logarithm.new(cons6, cons3)
  logarithms6 = OoTalk::Logarithm.new(cons6, cons7)
  logarithms7 = OoTalk::Logarithm.new(cons1, cons7)

  it 'new' do
    logarithms = OoTalk::Logarithm.new(cons1, cons2)
    expect(logarithms).to_not be_nil
  end

  it 'exec' do
    expect(logarithms1.exec).to be == 0.47712125471966244
    expect(logarithms2.exec).to be == 3.0
    expect(logarithms3.exec).to be == 2.0
    expect(logarithms4.exec).to be == -0.6989700043360187
    expect(logarithms5.exec).to be == -0.3413030972429927
    expect(logarithms6.exec).to be == 0
    expect(logarithms7.exec).to be == 0
  end

    it "to_s" do
    expect(logarithms1.to_s).to eq 'log10(3)'
    expect(logarithms2.to_s).to eq 'log2(8)'
    expect(logarithms3.to_s).to eq 'log0.2(0.04)'
    expect(logarithms4.to_s).to eq 'log10(0.2)'
    expect(logarithms5.to_s).to eq 'log0.04(3)'
    expect(logarithms6.to_s).to eq 'log0.04(1)'
    expect(logarithms7.to_s).to eq 'log10(1)'
  end
end
