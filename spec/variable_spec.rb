require 'spec_helper'
require_relative '../lib/variable.rb'

describe 'Variables' do
  it "new" do
    var = Variable.new(nil)
    expect(var).to_not be_nil
  end

  it "to_s" do
    var1 = Variable.new("x")
    
    expect(var1.to_s.length).to be >= 0
  end

  it "exec" do
    var1 = Variable.new("x")
    var2 = Variable.new("y")
    var3 = Variable.new("z")
   
    expect(var1.exec({:x => ["abc","11"]})).to be == {:x => ["abc","11"]}    
    expect(var2.exec({:y => "abczz"})).to be == {:y => "abczz"}
    expect(var3.exec({:z => 10})).to be == {:z => 10}

   end
end
