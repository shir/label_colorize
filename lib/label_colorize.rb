require 'label_colorize/version'
require 'label_colorize/generator'

module LabelColorize
  def self.generate_color(str)
    Generator.new(str).color
  end
end
