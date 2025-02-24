# frozen_string_literal: true

module SolidusReviews
  module Spree
    module ProductsControllerDecorator
      def self.prepended(base)
        base.class_eval do
          helper ::Spree::ReviewsHelper
        end
      end

      ::Spree::ProductsController.prepend self if defined?(::Spree::ProductsController)
    end
  end
end
