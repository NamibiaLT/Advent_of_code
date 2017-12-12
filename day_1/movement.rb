class Movement
	def self.calculate_y(instruction, starting_position)
    direction, step = parse_instruction(instruction)
    starting_position[:y] += case starting_position[:orientation]
															when :north, :south
																0
															when :east
																direction == "L" ? step.to_i : -(step.to_i)
															when :west
																direction == "L" ? -(step.to_i) : step.to_i
															end 
  end

  def self.calculate_x(instruction, starting_position)
    starting_position[:x] += x_diff(starting_position[:orientation], instruction)
	end
	
	def self.x_diff(orientation, instruction)
		direction, step = parse_instruction(instruction)
		case orientation
		when :north
			direction == "L" ? -(step.to_i) : step.to_i
		when :south
			direction == "L" ? step.to_i : -(step.to_i) 
		when :east, :west
			0
		end 
	end

	ORIENTATIONS = [:north, :east, :south, :west]
	 
  def self.calculate_orientation(instruction, starting_position)
    direction, _ = parse_instruction(instruction)
		orientation = starting_position[:orientation]
		index = ORIENTATIONS.index(orientation)
		if direction == 'R'
			new_index = index + 1
		else
			new_index = index - 1
		end
		ORIENTATIONS[new_index % ORIENTATIONS.size]
  end

	def self.parse_instruction(instruction)
    instruction.split(//, 2)
  end
end