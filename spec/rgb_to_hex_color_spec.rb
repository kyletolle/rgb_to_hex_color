require 'rspec'
require 'rgb_to_hex_color'

describe RgbToHexColor do
  let(:rgb_to_hex) { described_class.new(*initial_colors) }

  shared_context "with simple initial colors" do
    let(:initial_colors ) { [ 1, 2, 3 ] }
  end

  describe "#rgb" do
    subject { rgb_to_hex.rgb }

    include_context "with simple initial colors"

    let(:expected_colors) { initial_colors }

    it "returns the colors it was initialized with" do
      expect(subject).to eq expected_colors
    end
  end

  describe "#valid?" do
    subject { rgb_to_hex.valid? }

    describe "for valid rgb colors" do
      include_context "with simple initial colors"

      it "is true" do
        expect(subject).to eq true
      end
    end

    describe "for invalid r color" do
      let(:initial_colors) { [ -1, 2, 3 ] }

      it "is false" do
        expect(subject).to eq false
      end
    end

    describe "for invalid g color" do
      let(:initial_colors) { [ 1, "-2", 3 ] }

      it "is false" do
        expect(subject).to eq false
      end
    end

    describe "for invalid b color" do
      let(:initial_colors) { [ 1, 2, Object.new ] }

      it "is false" do
        expect(subject).to eq false
      end
    end
  end

  describe "#hex" do
    subject { rgb_to_hex.hex }

    describe "with valid, small digits" do
      let(:initial_colors)     { [ 1, 2, 3 ] }
      let(:expected_hex_color) { '#010203' }

      it "returns the correct hex string" do
        expect(subject).to eq expected_hex_color
      end
    end

    describe "with valid, large digits" do
      let(:initial_colors)     { [ 100, 200, 222 ] }
      let(:expected_hex_color) { '#64C8DE' }

      it "returns the correct hex string" do
        expect(subject).to eq expected_hex_color
      end
    end

    describe "with invalid digits" do
      let(:initial_colors) { [ -1, "b", Object.new ] }

      it "is nil" do
        expect(subject).to be_nil
      end
    end
  end
end

