require File.dirname(__FILE__) + '/expression'
require File.dirname(__FILE__) + '/assignment'

class Variable < Expression

  private

    def initialize(id=nil)
      @id = id
    end
  
  public

    def exec(var={})
       vars = {@id.to_sym => "abcd",}       
       vars.merge(var) 
    end

    def to_s
      "#{@id}" 
    end
end
