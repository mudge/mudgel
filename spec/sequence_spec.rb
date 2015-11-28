require 'sequence'
require 'println'
require 'text'

RSpec.describe Sequence do
  it 'evaluates both expressions in order' do
    sequence = described_class.new(Println.new(Text.new('Hello')), Println.new(Text.new('world')))

    expect { eval(sequence.to_ruby).call({}) }.to output("Hello\nworld\n").to_stdout
  end
end
