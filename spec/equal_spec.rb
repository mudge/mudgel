require 'equal'
require 'number'

RSpec.describe Equal do
  it 'evaluates to a comparison' do
    equal = described_class.new(Number.new(5), Number.new(5))

    expect(eval(equal.to_ruby).call({})).to eq(true)
  end
end
