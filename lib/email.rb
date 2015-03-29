module Stash
  ItemError = Class.new(StandardError)

  def dump(item)
    raise ItemError.new unless item.is_a?(self)
    item.dump
  end
end

class Email
  extend Stash
  include Comparable
  Invalid = Class.new(StandardError)

  def initialize(value)
    self.value = value
  end

  def self.load(string)
    new(string)
  end

  # TODO test
  # forge, actualize, attempt 
  def self.try(value)
    begin
      new(value)
    rescue Invalid => err
      yield err.message
    end
  end

  def to_s
    value
  end
  alias_method :to_str, :to_s
  alias_method :dump, :to_s

  def value
    @value
  end

  def <=>(other)
    value <=> other
  end

  private

  def value=(new_value)
    @value = new_value.strip[/^[^@]+@[^@]+$/] || invalid(new_value)
  end

  def invalid(bad_format)
    raise Invalid.new "'#{bad_format}' is not a valid email"
  end
end
