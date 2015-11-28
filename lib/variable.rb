require 'json'

Variable = Struct.new(:name) do
  def to_s
    "something known as #{name}"
  end

  def to_ruby
    "-> e { e[#{name.inspect}] }"
  end

  def to_javascript
    "function (e) { return e[#{JSON.dump(name)}]; }"
  end

  def to_clojure
    "(fn [e] (e #{name.inspect}))"
  end
end
