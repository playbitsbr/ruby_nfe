require 'spec_helper'

describe RubyNfe::Utils::Certificate do
  let(:options) {
    {
      certificate_path: ENV['CERT_PATH'],
      password:    ENV['CERT_PASS'],
      cacert_path: ENV['CA_PATH']
    }
  }
  subject { RubyNfe::Utils::Certificate.new(options) }

  describe '#load' do
    it 'should return a OpenSSL::X509::Certificate' do
      expect(subject.load).to be_a(OpenSSL::X509::Certificate)
    end
  end

  describe '#key' do
    it 'should return a OpenSSL::PKey::RSA' do
      expect(subject.key).to be_a(OpenSSL::PKey::RSA)
    end
  end
end
