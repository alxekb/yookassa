# frozen_string_literal: true

module YandexCheckout
  module Entity
    class Card
      extend  Dry::Initializer
      extend  YandexCheckout::Callable
      include YandexCheckout::Optional

      option :first6
      option :last4
      option :expiry_month
      option :expiry_year
      option :card_type, proc(&:to_s)
      option :source, proc(&:to_s), optional: true
    end
  end
end
