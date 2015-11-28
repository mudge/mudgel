require 'variable'

RSpec.describe Variable do
  it 'evaluates to a variable of that name in the environment' do
    variable = described_class.new(:x)

    expect(eval(variable.to_ruby).call(:x => 'Bob')).to eq('Bob')
  end
end
