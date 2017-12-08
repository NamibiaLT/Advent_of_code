require_relative '../problem' 

RSpec.describe Problem do
	describe "#solve" do
		let(:problem) { Problem.new(["L3","R1","L4","L1","L2","R4","L3","L3","R2","R3","L5","R1","R3","L4","L1","L2","R2","R1","L4","L4","R2","L5","R3","R2","R1","L1","L2","R2","R2","L1","L1","R2","R1","L3","L5","R4","L3","R3","R3","L5","L190","L4","R4","R51","L4","R5","R5","R2","L1","L3","R1","R4","L3","R1","R3","L5","L4","R2","R5","R2","L1","L5","L1","L1","R78","L3","R2","L3","R5","L2","R2","R4","L1","L4","R1","R185","R3","L4","L1","L1","L3","R4","L4","L1","R5","L5","L1","R5","L1","R2","L5","L2","R4","R3","L2","R3","R1","L3","L5","L4","R3","L2","L4","L5","L4","R1","L1","R5","L2","R4","R2","R3","L1","L1","L4","L3","R4","L3","L5","R2","L5","L1","L1","R2","R3","L5","L3","L2","L1","L4","R4","R4","L2","R3","R1","L2","R1","L2","L2","R3","R3","L1","R4","L5","L3","R4","R4","R1","L2","L5","L3","R1","R4","L2","R5","R4","R2","L5","L3","R4","R1","L1","R5","L3","R1","R5","L2","R1","L5","L2","R2","L2","L3","R3","R3","R1"]) }
		it "shows the final position after instructions are executed" do
			expect(problem.solve).to eq(252)
		end
	end
end



# 	@current_position  = {
# 		:x => calculate_x(instruction, @current_position), 
# 		:y => calculate_y(instruction, @current_position),
# 		:orientation => calculate_orientation(instruction, @current_position),
# } 
	# def starting_orientation_is_north
	# 	problem = Problem.new
	# 	assert_equal :north, problem.current_position
	# end
	
	# def solve
  #   assert(252 == @current_position[:x].abs + @current_position[:y].abs)  
	# end
# end