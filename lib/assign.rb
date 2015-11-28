require 'json'

Assign = Struct.new(:name, :expression) do
  def to_s
    "let #{name} be #{expression}"
  end

  def to_ruby
    "-> e { e.merge(#{name.inspect} => (#{expression.to_ruby}).call(e)) }"
  end

  def to_javascript
    "function (e) { e[#{JSON.dump(name)}] = (#{expression.to_javascript}(e)); return e; }"
  end
end
