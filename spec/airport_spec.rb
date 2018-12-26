require 'airport'

RSpec.describe Airport do
  subject(:airport) { described_class.new(20, weather) }
  let(:plane) { double :plane }
  let(:weather) { double :weather }

  describe '#land' do
    context 'when not stormy' do
      before do
        allow(weather).to receive(:stormy?).and_return false
      end

      it 'instructs a plane to land' do
        expect(airport).to respond_to(:land).with(1).argument
      end

      context 'when full' do
        it 'raise an error' do
          20.times do
            airport.land(plane)
          end
          expect{ airport.land(plane) }.to raise_error 'Cannot land plane: airport full.'
        end
      end
    end

    context 'when stormy' do
      it 'raises an error' do
        allow(weather).to receive(:stormy?).and_return true
        expect{ airport.land(plane) }.to raise_error 'Cannot land plane: weather is stormy.'
      end
    end
  end

  describe '#take_off' do
    context 'when not stormy' do
      before do
        allow(weather).to receive(:stormy?).and_return false
      end

      it 'instructs a plane to take off' do
        expect(airport).to respond_to(:take_off).with(1).argument
      end

      it 'raises an error if plane is not at this airport' do
        gatwick = described_class.new(20, weather)
        gatwick.land(plane)
        expect{ airport.take_off(plane) }.to raise_error 'Cannot take off plane: plane not at this airport.'
      end
    end

    context 'when stormy' do
      before do
        allow(weather).to receive(:stormy?).and_return true
      end

      it 'raises an error' do
        expect{ airport.take_off(plane) }.to raise_error 'Cannot take off plane: weather is stormy.'
      end
    end
  end
end
