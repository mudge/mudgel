Println = Struct.new(:expression) do
  def to_s
    "print #{expression}"
  end

  def to_ruby
    "-> e { puts (#{expression.to_ruby}).call(e); e }"
  end

  def to_javascript
    "function (e) { console.log(#{expression.to_javascript}(e)); return e; }"
  end
end
