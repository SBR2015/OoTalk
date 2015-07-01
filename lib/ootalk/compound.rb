require 'ootalk/instruction'

module OoTalk
  class Compound < Instruction
    private
     def initialize(left, right)
       @left = left
       @right = right
     end

   public
     def exec
       @left.exec
       return @right.exec
     end
    
     def to_s
       #{@left}";"#{@right}
     end
  end
end
