require 'ootalk'

module OoTalk
  class Array
    private

    def initialize (*array)
       @array = array
     end

     public
      #@array.map(&:exec):block{}の中で、式列一個づつ実行する
      #@array.last.exec:最後の結果を返す
      #式列実行してから、最後の結果を返す
      def exec
        @array.map(&:exec)
        return @array.last.exec
     end
     
     #式列の表示
      def to_s
        @array.map(&:to_s)
      end
  end
end
