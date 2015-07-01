require 'spec_helper'
require 'ootalk'
require 'ootalk/array'
require 'ootalk/loop'

describe 'OoTalk::array' do
  var1 = OoTalk::Variable.new('n')
  var2 = OoTalk::Variable.new('s')
  con = OoTalk::Constant.new(1)

  # n > 0
  gt =  OoTalk::GreaterThan.new(var1,OoTalk::Constant.new(0))
  # n = 5
  ass1 = OoTalk::Assignment.new(var1,OoTalk::Constant.new(5))
  # s = 1
  ass2 = OoTalk::Assignment.new(var2,con)

  # s = s*n
  asst = OoTalk::Assignment.new(var2,OoTalk::Times.new(var2,var1))

  # n = n-1
  ss = OoTalk::Assignment.new(var1,OoTalk::Substract.new(var1,con))

  #  while(n > 0) do
  #  s = s * n
  #  n = n-1
  #  end
  lp = OoTalk::Loop.new(gt,asst,ss)

  # block{}内式列計算：5の階乗を計算する！
  # {n = 5
  #  s = 1
  #  while(n > 0) do
  #  s = s * n
  #  n = n-1
  #  end}
  arr = OoTalk:: Array.new(ass1,ass2,lp,var2)

  it 'initialize' do
    expect(arr).to_not be_nil
  end

  it 'exec' do
    # 5の階乗を計算する結果
    expect(arr.exec).to be 120
  end

  it 'to_s' do
    expect(arr.to_s).to be ==  ["n=5", "s=1", "while true do\n  break unless (n>0)\n  s=(s*n)\n  n=(n-1)\nend", "s"]
  end
end