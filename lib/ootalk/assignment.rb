require 'ootalk/instruction'
require 'ootalk/variable'
require 'ootalk/operator'
require 'ootalk/constant'

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
        Variable.name[@target.key] = @source.exec
        return @target.exec
      end

      def to_s
        "#{@target}#{@op}#{@source.to_s}"
      end

  end
end
