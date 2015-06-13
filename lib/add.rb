require File.dirname(__FILE__) + '/operator'

class Add < Operator

    def initialize(left,right)
      super
      @operator = '+'
    end

    def exec
      @left.exec + @right.exec
    end

end
