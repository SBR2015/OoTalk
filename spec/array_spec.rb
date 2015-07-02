require 'spec_helper'
require 'ootalk'
require 'ootalk/loop'

describe 'OoTalk::array' do
  var_n = OoTalk::Variable.new('n')
  var_s = OoTalk::Variable.new('s')

     # n > 0
  n_greater_than_0 =  OoTalk::GreaterThan.new(var_n,OoTalk::Constant.new(0))
     # n = 5
  n_eq_5 = OoTalk::Assignment.new(var_n,OoTalk::Constant.new(5))
     # s = 1
  s_eq_1 = OoTalk::Assignment.new(var_s,OoTalk::Constant.new(1))

     # s = s*n
  s_product = OoTalk::Assignment.new(var_s,OoTalk::Times.new(var_s,var_n))

     # n = n-1
  n_decrement = OoTalk::Assignment.new(var_n,OoTalk::Substract.new(var_n,OoTalk::Constant.new(1)))

     #  while(n > 0) do
     #  s = s * n
     #  n = n-1
     #  end
  lp = OoTalk::Loop.new(n_greater_than_0,s_product,n_decrement)

     # block{}内式列計算：5の階乗を計算する！
     # {n = 5
     #  s = 1
     #  while(n > 0) do
     #  s = s * n
     #  n = n-1
     #  end
     #  return s}
  let(:arr) {OoTalk::Array.new(n_eq_5,s_eq_1,lp,var_s)}

  it 'initialize' do
    expect(arr).to_not be_nil
  end

  it 'exec' do
    # 5の階乗を計算する結果
    expect(arr.exec).to eq 120
  end

  it 'to_s' do
    expect(arr.to_s).to eq ['n=5', 's=1', "while true do\n  break unless (n>0)\n  s=(s*n)\n  n=(n-1)\nend", 's']
  end
end