require 'label_colorize/version'
require 'label_colorize/generator'

module LabelColorize
  def self.generate_rgb(str)
    Generator.new(str).rgb
  end

  def self.generate_hue(str)
    Generator.new(str).hue
  end
end
