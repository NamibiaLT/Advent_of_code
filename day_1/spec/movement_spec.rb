require_relative '../movement'

RSpec.describe Movement do
	context "calculates y" do
		context "when facing west" do
			let(:starting_position) do
				{
					orientation: :west,
						x: 0,
						y: 0
				}
			end
			it "moves north" do
				y = Movement.calculate_y("R3", starting_position)
				expect(y).to eq(3)
			end
		end
		context "when facing north" do
			let(:starting_position) do
				{
					orientation: :north,
						x: 0,
						y: 0
				}
			end
			it "does not change y position" do
				y = Movement.calculate_y("R3", starting_position)
				expect(y).to eq(0)
			end
		end

		context "when facing east" do
			let(:starting_position) do
				{
					orientation: :east,
						x: 0,
						y: 0
				}
			end
			it "moves south" do
				y = Movement.calculate_y("R3", starting_position)
				expect(y).to eq(-3)
			end 
		end

		context "when facing south" do
			let(:starting_position) do
				{
					orientation: :south,
						x: 0,
						y: 0
				}
			end
			it "y does not change" do
				y = Movement.calculate_y("R3", starting_position)
				expect(y).to eq(0)
			end 
		end
	end

	context "calculates x" do
		context "when facing west" do
			let(:starting_position) do
				{
					orientation: :west,
						x: 0,
						y: 0
				}
			end
			it "does not change x" do
				x = Movement.calculate_x("R3", starting_position)
				expect(x).to eq(0)
			end
		end
		context "when facing north" do
			let(:starting_position) do
				{
					orientation: :north,
						x: 0,
						y: 0
				}
			end
			it "moves towards east" do
				x = Movement.calculate_x("R3", starting_position)
				expect(x).to eq(3)
			end
		end

		context "when facing east" do
			let(:starting_position) do
				{
					orientation: :east,
						x: 0,
						y: 0
				}
			end
			it "x does not change" do
				x = Movement.calculate_x("R3", starting_position)
				expect(x).to eq(0)
			end 
		end

		context "when facing south" do
			let(:starting_position) do
				{
					orientation: :south,
						x: 0,
						y: 0
				}
				
			end
			it "moves towards west" do
				x = Movement.calculate_x("R3", starting_position)
				expect(x).to eq(-3)
			end 
		end
	end
end
