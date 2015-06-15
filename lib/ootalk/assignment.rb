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
        source = @source.exec
        @target = source
        return source
      end

  end
end
