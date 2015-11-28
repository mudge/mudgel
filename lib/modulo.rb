Modulo = Struct.new(:left, :right) do
  def to_s
    "the remainder after dividing #{left} and #{right}"
  end

  def to_ruby
    "-> e { (#{left.to_ruby}).call(e) % (#{right.to_ruby}).call(e) }"
  end

  def to_javascript
    "function (e) { return (#{left.to_javascript}(e)) % (#{right.to_javascript}(e)); }"
  end
end
