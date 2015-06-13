require File.dirname(__FILE__) + '/operator'

class Substract < Operator

    def initialize(left,right)
      super
      @operator = '-'
    end

    def exec
      @left.exec - @right.exec
    end

end
