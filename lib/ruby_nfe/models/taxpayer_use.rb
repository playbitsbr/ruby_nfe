module RubyNfe
  module Models
    class TaxpayerUse
      include HappyMapper
      include ActiveModel::Model
      tag 'obsCont'

      validates_format_of :field, with: /\A(.){1,20}\z/
      validates_format_of :content, with: /\A(.){1,20}\z/

      element :field,   String, tag: 'xCampo'
      element :content, String, tag: 'xTexto'
    end
  end
end
