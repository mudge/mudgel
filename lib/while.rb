While = Struct.new(:condition, :body) do
  def to_s
    "while #{condition}, #{body}"
  end

  def to_ruby
    "-> e { while (#{condition.to_ruby}).call(e); " \
    "e = (#{body.to_ruby}).call(e); end; e }"
  end

  def to_javascript
    "function (e) { while (#{condition.to_javascript}(e)) { e = (#{body.to_javascript}(e)); }; return e; }"
  end
end
