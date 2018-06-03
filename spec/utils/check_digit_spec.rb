require 'spec_helper'

describe RubyNfe::Utils::CheckDigit do
  let(:access_key) { '2618041138800600010255001001234567312125566' }
  subject { RubyNfe::Utils::CheckDigit.new(access_key) }

  describe '#calculation' do
    it 'should be 7' do
      digit = subject.calculation

      expect(digit).to eq 7
    end
  end
end
