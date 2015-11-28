require 'number'

RSpec.describe Number do
  it 'evaluates to its value' do
    number = described_class.new(5)

    expect(eval(number.to_ruby).call({})).to eq(5)
  end
end
