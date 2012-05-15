# Human Attribute

1. Defines method "human_name" for attribute name translation;
1. Defines method "human_value" for attribute value translation.

## Usage example

```yaml
en.yml:
  en
    activerecord
      attributes:
        user:
          state: Status
      attribute_values:
        user:
          state:
            new: Just registered
            ok: Active
```

Then:

```ruby
  user = User.first
  user.state # => "new"
  user.human_name(:state) # => "Status"
  user.human_value(:state) # => "Just registered"
```

## Installation

In Gemfile:

```ruby
  gem 'human_attribute'
```

## Copyright

Copyright (c) 2012 divineforest, [Evrone.com](http://evrone.com)
