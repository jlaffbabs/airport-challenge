require 'airport'

RSpec.describe Airport do
  subject(:airport) { described_class.new }
  let(:plane) { double :plane }

  it 'instructs a plane to land' do
    expect(airport).to respond_to(:land).with(1).argument
  end

  it 'instructs a plane to take off' do
    expect(airport).to respond_to(:take_off).with(1).argument
  end

  it 'raises an error if asked to take off a plane when weather is stormy' do
    allow(airport).to receive(:stormy?).and_return true
    expect{ airport.take_off(plane) }.to raise_error 'Cannot take off plane: weather is stormy.'
  end

end
