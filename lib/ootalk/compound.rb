require 'ootalk/instruction'
require 'ootalk/array'

module OoTalk
  class Compound < Array
    private
    def initialize(*array)
      super
    end

    public

    def to_s
      # '{'と';'を追加する
      arr =  @array.map {|i| '{' + i.to_s}
      #最後式の前の'{'削除
      arr[-1] = @array.last.to_s + ';'
      #change array to string
      str = arr.join('; ')
      # '}'をstringに追加
      (@array.length-1).times{str.concat '}'}
      # 式列返す
      str
    end
  end
end