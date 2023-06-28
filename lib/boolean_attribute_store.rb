# frozen_string_literal: true

require_relative "boolean_attribute_store/version"

module BooleanAttributeStore
  extend ActiveSupport::Concern

  class_methods do
    def define_predicate_methods(*method_names)
      method_names.each do |name|
        define_method("#{name}?") { public_send(name) == true || public_send(name) == '1' }
      end
    end
  end
end
