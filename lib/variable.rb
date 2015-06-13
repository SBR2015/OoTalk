require File.dirname(__FILE__) + '/expression'

class Variable < Expression
  @@vars = {}
  private

    def initialize(id)
      @left = id
    end

  public

    def exec
      @@vars[@left]
    end
   
    def to_s
      "#{@id}"
    end

end
