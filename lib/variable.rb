require File.dirname(__FILE__) + '/expression'
require File.dirname(__FILE__) + '/assignment'

class Variable < Expression

  private

    def initialize(id = nil)
      @id = id
    end
  
  public

    def exec
      @id
    end

    def to_s
       "#{@id}"
    end
end
