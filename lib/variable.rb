require File.dirname(__FILE__) + '/expression'

class Variable < Expression
  
  private

    def initialize(id)
      @left = id
    end

  public

    def exec
      $vars = {}
      $vars[@letf]
    end
   
    def to_s
      "#{@id}"
    end

end
