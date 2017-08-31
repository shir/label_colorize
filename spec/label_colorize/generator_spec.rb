require 'spec_helper'
require 'securerandom'

RSpec.describe LabelColorize::Generator do
  describe '#rgb' do
    subject{ generator.rgb }

    let(:generator) { LabelColorize::Generator.new(str) }
    let(:str)       { SecureRandom.base64(10) }

    it 'generate an RGB HEX color for given string' do
      expect(subject).to match(/\h{6}/)
    end
  end
end
