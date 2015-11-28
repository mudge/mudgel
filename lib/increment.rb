Increment = Struct.new(:value) do
  def to_s
    "one more than #{value}"
  end

  def to_ruby
    "-> e { (#{value.to_ruby}).call(e) + 1 }"
  end

  def to_javascript
    "function (e) { return (#{value.to_javascript}(e)) + 1; }"
  end
end
