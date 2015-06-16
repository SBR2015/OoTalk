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
        @target.name[@target.key] = @source.exec
        return @target.name
      end

      def to_s
        "#{@target}#{@op}#{@source.to_s}"
      end

  end
end
