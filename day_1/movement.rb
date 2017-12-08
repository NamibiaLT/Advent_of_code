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

  def self.calculate_orientation(instruction, starting_position)
    direction, step = parse_instruction(instruction)
		left = direction == "L"
		case starting_position[:orientation]
    when :north
      left ? :west : :east
    when :south
      left ? :east : :west
    when :east
      left ? :north : :south
    when :west
      left ? :south : :north
    end 
  end

	def self.parse_instruction(instruction)
    instruction.split(//, 2)
  end
end