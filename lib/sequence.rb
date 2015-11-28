Sequence = Struct.new(:first, :second) do
  def to_s
    "firstly, #{first} followed by #{second}"
  end

  def to_ruby
    "-> e { (#{second.to_ruby}).call((#{first.to_ruby}).call(e)) }"
  end

  def to_javascript
    "function (e) { return (#{second.to_javascript}(#{first.to_javascript}(e))); }"
  end

  def to_clojure
    "(fn [e] (#{second.to_clojure} (#{first.to_clojure} e)))"
  end
end
