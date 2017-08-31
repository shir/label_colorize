require 'spec_helper'
require 'securerandom'

RSpec.describe LabelColorize do
  it 'has a version number' do
    expect(LabelColorize::VERSION).not_to be nil
  end

  describe '.generate_rgb' do
    subject{ LabelColorize.generate_rgb(str) }

    let(:str)       { SecureRandom.base64(10) }
    let(:rgb_color) { SecureRandom.hex(6) }
    let(:generator) { double 'generator', rgb: rgb_color }

    it 'creates instance of generator and returns generated rgb value' do
      expect(LabelColorize::Generator).to receive(:new).with(str).and_return(generator)
      expect(generator).to receive(:rgb)

      expect(subject).to eq rgb_color
    end
  end

  describe '.generate_hue' do
    subject{ LabelColorize.generate_hue(str) }

    let(:str)       { SecureRandom.base64(10) }
    let(:hue_color) { rand(360) }
    let(:generator) { double 'generator', hue: hue_color }

    it 'creates instance of generator and returns generated hue value' do
      expect(LabelColorize::Generator).to receive(:new).with(str).and_return(generator)
      expect(generator).to receive(:hue)

      expect(subject).to eq hue_color
    end
  end
end
