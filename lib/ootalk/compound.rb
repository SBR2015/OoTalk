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
      # '{'と';'を追加してから、change array to string
      str = @array.map {|i| '{' + i.to_s}.join('; ')
      #最後式の前の'{'削除
      str[-2] = ''
      # '}'をstringに追加
      (@array.length-1).times{str.concat '}'}
      # 式列返す
      str
    end
  end
end