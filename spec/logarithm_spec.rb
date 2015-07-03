require 'spec_helper'
require 'ootalk/logarithm'

describe 'logarithms' do
  let(:logarithms1) {OoTalk::Logarithm.new(OoTalk::Constant.new(10), OoTalk::Constant.new(3))}
  let(:logarithms2) {OoTalk::Logarithm.new(OoTalk::Constant.new(2), OoTalk::Constant.new(8))}
  let(:logarithms3) {OoTalk::Logarithm.new(OoTalk::Constant.new(0.2), OoTalk::Constant.new(0.04))}
  let(:logarithms4) {OoTalk::Logarithm.new(OoTalk::Constant.new(10), OoTalk::Constant.new(0.2))}
  let(:logarithms5) {OoTalk::Logarithm.new(OoTalk::Constant.new(0.04), OoTalk::Constant.new(3))}
  let(:logarithms6) {OoTalk::Logarithm.new(OoTalk::Constant.new(0.04), OoTalk::Constant.new(1))}
  let(:logarithms7) {OoTalk::Logarithm.new(OoTalk::Constant.new(10), OoTalk::Constant.new(1))}

  it 'initialize' do
    expect(logarithms1).to_not be_nil
    expect(logarithms2).to_not be_nil
    expect(logarithms3).to_not be_nil
    expect(logarithms4).to_not be_nil
    expect(logarithms5).to_not be_nil
    expect(logarithms6).to_not be_nil
    expect(logarithms7).to_not be_nil
  end

  it 'exec' do
    expect(logarithms1.exec).to eq 0.47712125471966244
    expect(logarithms2.exec).to eq 3.0
    expect(logarithms3.exec).to eq 2.0
    expect(logarithms4.exec).to eq -0.6989700043360187
    expect(logarithms5.exec).to eq -0.3413030972429927
    expect(logarithms6.exec).to eq 0
    expect(logarithms7.exec).to eq 0
  end

    it 'to_s' do
    expect(logarithms1.to_s).to eq 'log10(3)'
    expect(logarithms2.to_s).to eq 'log2(8)'
    expect(logarithms3.to_s).to eq 'log0.2(0.04)'
    expect(logarithms4.to_s).to eq 'log10(0.2)'
    expect(logarithms5.to_s).to eq 'log0.04(3)'
    expect(logarithms6.to_s).to eq 'log0.04(1)'
    expect(logarithms7.to_s).to eq 'log10(1)'
  end
end
