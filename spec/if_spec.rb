require 'if'
require 'less_than'
require 'number'
require 'text'

RSpec.describe If do
  it 'evaluates to a conditional' do
    conditional = described_class.new(LessThan.new(Number.new(3), Number.new(5)), Text.new('Success'), Text.new('Failure'))

    expect(eval(conditional.to_ruby).call({})).to eq('Success')
  end
end
