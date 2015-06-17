
module OoTalk
  class Variable

    attr_accessor :key
    @@name = {}
    private

    def initialize(key)
      @key = key
    end

    public

    def exec
      @@name[@key]
    end

    def self.name
      return @@name
    end

    def self.name=(name)
      @@name[name] = nil
    end

    def to_s
      @key.to_s
    end
  end
end
