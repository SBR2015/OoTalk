require 'spec_helper'
require_relative '../lib/variable.rb'

describe 'Variables' do
  it "new" do
    var = Variable.new
    expect(var).to_not be_nil
  end

  it "to_s" do
    var = Variable.new("x")
    expect(var.to_s).to be == "x"

  end

end
