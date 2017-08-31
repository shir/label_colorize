require 'spec_helper'
require 'securerandom'

RSpec.describe LabelColorize::Generator do
  describe '#color' do
    subject{ LabelColorize::Generator.new(str).color }

    let(:str) { SecureRandom.base64(10) }

    it 'generate an RGB HEX color for given string' do
      expect(subject).to match(/\h{6}/)
    end
  end
end
