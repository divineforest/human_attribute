module ActiveRecord
  class Base

    def human_value(attribute_name)
      value = send(attribute_name)
      if value.present?
        I18n.t(value, :scope => "activerecord.attribute_values.#{self.class.name.downcase}.#{attribute_name}")
      else
        value
      end
    end

  end
end
