require 'println'
require 'text'

RSpec.describe Println do
  it 'prints its value to stdout' do
    print = described_class.new(Text.new('Hello world'))

    expect { eval(print.to_ruby).call({}) }.to output("Hello world\n").to_stdout
  end
end
