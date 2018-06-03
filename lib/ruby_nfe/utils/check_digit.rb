module RubyNfe
  module Utils
    class CheckDigit
      def initialize(access_key)
        @access_key = access_key.reverse.split('').map(&:to_i)
      end

      def calculation
        remainder = sum_of_products % 11
        remainder.zero? || remainder == 1 ? 0 : 11 - remainder
      end

      private

      def sum_of_products
        @access_key.each_with_object(weight: 2, sum: 0) do |number, memory|
          memory[:sum] += number * memory[:weight]
          memory[:weight] == 9 ? memory[:weight] = 2 : memory[:weight] += 1
        end[:sum]
      end
    end
  end
end
