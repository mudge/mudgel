require 'text'

RSpec.describe Text do
  it 'evaluates to its value' do
    text = described_class.new('Foo')

    expect(eval(text.to_ruby).call({})).to eq('Foo')
  end
end
