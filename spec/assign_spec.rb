require 'assign'
require 'text'

RSpec.describe Assign do
  it 'assigns a value to a variable in the environment' do
    assign = described_class.new(:x, Text.new('Bob'))

    expect(eval(assign.to_ruby).call({})).to eq(:x => 'Bob')
  end
end
