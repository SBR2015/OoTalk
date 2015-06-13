require File.dirname(__FILE__) + '/operator'

class Power < Operator

  private

    def initialize(left,right)
      super
      @operator = '**'
    end

  public

    def exec
      @left.exec ** @right.exec
    end

end
