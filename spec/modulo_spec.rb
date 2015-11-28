require 'modulo'
require 'number'

RSpec.describe Modulo do
  it 'evaluates to the modulo of its operands' do
    modulo = described_class.new(Number.new(4), Number.new(2))

    expect(eval(modulo.to_ruby).call({})).to eq(0)
  end
end
