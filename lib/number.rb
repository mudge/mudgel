require 'json'

Number = Struct.new(:value) do
  def to_s
    value.to_s
  end

  def to_ruby
    "-> e { #{value.inspect} }"
  end

  def to_javascript
    "function (e) { return #{JSON.dump(value)}; }"
  end

  def to_clojure
    "(fn [e] #{value.inspect})"
  end
end
