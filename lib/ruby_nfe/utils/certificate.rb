module RubyNfe
  module Utils
    class Certificate
      def initialize(options)
        @options = options.deep_symbolize_keys
        @file = File.open(@options[:certificate_path], 'rb').read
      end

      def key
        @key ||= pkcs12.key
      end

      def load
        @certificate ||= pkcs12.certificate
      end

      def password
        @options[:password]
      end

      def cacert_path
        @options[:cacert_path]
      end

      private

      def pkcs12
        @pkcs12 ||= OpenSSL::PKCS12.new(@file, password)
      end
    end
  end
end
