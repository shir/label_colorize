require 'spec_helper'
require 'securerandom'

RSpec.describe LabelColorize do
  it 'has a version number' do
    expect(LabelColorize::VERSION).not_to be nil
  end

  describe '.generate_color' do
    subject{ LabelColorize.generate_color(str) }

    let(:str)       { SecureRandom.base64(10) }
    let(:color)     { SecureRandom.hex(6) }
    let(:generator) { double 'generator', color: color }

    it 'creates instance of generator and returns generated color' do
      expect(LabelColorize::Generator).to receive(:new).with(str).and_return(generator)
      expect(generator).to receive(:color)

      expect(subject).to eq color
    end
  end
end
