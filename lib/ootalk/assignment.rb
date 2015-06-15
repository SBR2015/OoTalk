require 'ootalk/instruction'
require 'ootalk/variable'
require 'ootalk/operator'

module OoTalk
  class Assignment < Instruction
    private

      def initialize(target = nil, source = nil)
        @target = target
        @source = source
        @op = '='
      end

    public

      def exec
        @target = @source.exec
        return @source.exec
      end

      def to_s
        "#{@target} #{@op} #{@source.to_s}"
      end

  end
end
