require File.dirname(__FILE__) + '/assignment'

class Variable 
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
