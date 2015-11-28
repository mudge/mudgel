require 'increment'
require 'number'

RSpec.describe Increment do
  it 'increments its value' do
    increment = described_class.new(Number.new(1))

    expect(eval(increment.to_ruby).call({})).to eq(2)
  end
end
