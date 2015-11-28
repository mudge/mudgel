require 'while'
require 'less_than'
require 'variable'
require 'increment'
require 'assign'
require 'number'

RSpec.describe While do
  it 'evaluates to a while statement' do
    while_loop = described_class.new(LessThan.new(Variable.new(:i), Number.new(5)), Assign.new(:i, Increment.new(Variable.new(:i))))

    expect(eval(while_loop.to_ruby).call(:i => 0)).to eq(:i => 5)
  end
end
