module ActiveRecord
  class Base

    # en.activerecord.attribute_values.class_name.attribute_name
    # Example I18n lookup: en.activerecord.attribute_values.user.state
    def self.human_attribute_value(attribute_name, value)
      return nil if value.nil?
      I18n.t(value, :scope => "activerecord.attribute_values.#{self.name.underscore}.#{attribute_name}")
    end

    # Looks in en.activerecord.attributes.class.attribute_name
    # Example I18n lookup: en.activerecord.attributes.user.state
    def human_name(attribute_name)
      self.class.human_attribute_name(attribute_name)
    end

    # en.activerecord.attribute_values.class_name.attribute_name
    # Example I18n lookup: en.activerecord.attribute_values.user.state
    def human_value(attribute_name)
      value = send(attribute_name)
      self.class.human_attribute_value attribute_name, value
    end
  end
end
