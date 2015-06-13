module OoTalk
  class OoTalk::Constant

    private

      def initialize(value)
        @value = value
      end

    public

      def exec
        @value
      end

      def to_s
        "#{@value}"
      end
  end
end
