require 'ootalk'

module OoTalk
  class Array
    private

    def initialize (*array)
       @array = array
     end

     public

      def exec
        @array.map(&:exec)
        return @array.last.exec
     end

      def to_s
        @array.map(&:to_s)
      end
  end
end
