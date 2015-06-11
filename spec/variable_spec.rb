require 'spec_helper'
require_relative '../lib/variable.rb'

describe 'Variables' do
  it "new" do
    var = Variable.new(nil)
    expect(var).to_not be_nil
  end

 # it "to_sy" do
  #  var1 = Variable.new('x')
   # var2 = Variable.new('x')
    #var3 = Variable.new('y')    
    #var4 = Variable.new('z')
    
   # expect(var1.to_sym).to be == :x
   # expect(var3.to_sym).to be == :y
   # expect(var2.to_sym).to be == var1.to_sym
   # expect(var2.to_sym).to_not be == var3.to_sym
 # end

  it "exec" do
    var1 = Variable.new
    expect(var1.exec:x => "abc").to be == "x => abc"
   end
end
