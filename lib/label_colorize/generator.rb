module LabelColorize
  class Generator
    attr_reader :str

    def initialize(str)
      @str = str
    end

    def rgb
      return nil unless str

      # Credits to Dominik Scholer
      # https://makandracards.com/makandra/24449-hash-any-ruby-object-into-an-rgb-color
      '%06x' % (str.hash & 0xffffff)
    end

    def hue
      str.hash % 360
    end
  end
end
