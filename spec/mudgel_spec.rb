require 'mudgel'

RSpec.describe Mudgel do
  describe 'Language' do
    it 'can implement FizzBuzz' do
      parser = MudgelParser.new
      syntax = parser.parse('while something known as i is less than 16, firstly, if 0 is equal to the remainder after dividing something known as i and 15 then print "FizzBuzz" otherwise if 0 is equal to the remainder after dividing something known as i and 5 then print "Buzz" otherwise if 0 is equal to the remainder after dividing something known as i and 3 then print "Fizz" otherwise print something known as i followed by let i be one more than something known as i')

      expect { eval(syntax.to_ast.to_ruby).call(:i => 1) }.to output("1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n").to_stdout
    end
  end

  describe 'AST' do
    it 'can implement FizzBuzz' do
      fizzbuzz = While.new(
        LessThan.new(Variable.new(:i), Number.new(16)),
        Sequence.new(
          If.new(
            Equal.new(Number.new(0), Modulo.new(Variable.new(:i), Number.new(15))),
            Println.new(Text.new('FizzBuzz')),
            If.new(
              Equal.new(Number.new(0), Modulo.new(Variable.new(:i), Number.new(5))),
              Println.new(Text.new('Buzz')),
              If.new(
                Equal.new(Number.new(0), Modulo.new(Variable.new(:i), Number.new(3))),
                Println.new(Text.new('Fizz')),
                Println.new(Variable.new(:i))
              )
            )
          ),
          Assign.new(:i, Increment.new(Variable.new(:i)))
        )
      )

      expect { eval(fizzbuzz.to_ruby).call(:i => 1) }.to output("1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n").to_stdout
    end
  end
end
