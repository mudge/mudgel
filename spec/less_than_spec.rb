require 'less_than'
require 'number'

RSpec.describe LessThan do
  it 'evaluates to a less than comparison' do
    less_than = described_class.new(Number.new(3), Number.new(5))

    expect(eval(less_than.to_ruby).call({})).to eq(true)
  end
end
