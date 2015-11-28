require 'json'

Text = Struct.new(:value) do
  def to_s
    value.inspect
  end

  def to_ruby
    "-> e { #{value.inspect} }"
  end

  def to_javascript
    "function (e) { return #{JSON.dump(value)}; }"
  end
end
