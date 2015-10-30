class Rover
	attr_accessor :x, :y, :current_direction
	def initialize(x, y, current_direction)
		@x = x.to_i
		@y = y.to_i
		@current_direction = current_direction
	end

	def read_instruction(instructions)
		directions = instructions.upcase.split("")
		directions.each do |m|
			if m == "M"
				move
			elsif m == "L"
				turn_left
			elsif m == "R"
				turn_right
			else
				puts "something in your instructions is unreadable"
			end
		end
	end

	def turn_right
		if current_direction == "South"
			@current_direction = "West"
		elsif current_direction == "West"
			@current_direction = "North"
		elsif current_direction == "North"
			@current_direction = "East"
		elsif current_direction == "East"
			@current_direction = "South"
		end
	end

	def turn_left
		if current_direction == "South"
		  @current_direction = "East"
		elsif current_direction == "East"
		  @current_direction = "North"
		elsif current_direction == "North"
		  @current_direction = "West"
		elsif current_direction == "West"
		  @current_direction = "South"
		end
	end

	def move
		if current_direction == "South"
		  @y -= 1
		elsif current_direction == "East"
		  @x += 1
		elsif current_direction == "North"
		  @y += 1
		elsif current_direction == "West"
		  @x -= 1
		end

		if @x > 10
			puts "The rover has fallen off the right side of the plateau"
		elsif @x < 0
			puts "The rover has fallen off the left side of the plateau"
		elsif @y > 10
			puts "The rover has fallen off the far side of the plateau"
		elsif @y < 0
			puts "The rover has fallen off the near side of the plateau"
		end
	end
end

#class Game

#pw	def welcome
#		puts "Welcome to the Mars Rover simulator. type 'instructions' for instructions. type 'controls' for the control manual. type 'start' to start the simulation"
#		input = gets.chomp
#		until input == "start"
#			if input == "instructions"
#			instructions
#			break
#			elsif input == "controls"
#			controls
#			break
#			else
#			puts "sorry I didn\'t understand that command"
#			break
#			end
#		end
#	end

#	def instructions
#		puts "You will be sending instructions to a NASA rover who is trying to navigate towards its checkpoint where a package is being dropped. The Rover is currently sitting on  plateau that is 10 meters wide and 10 meters long. to move the rover "
#	end
#	def controls
#		puts "type R to turn 90 degrees right in the same location"
#		puts "type L to turn 90 degrees left in the same location"
#		puts "type M to move forward one meter"
#		gets.chomp
#	end
#end

#game1 = Game.new
#game1.welcome




ben = Rover.new(1, 0, "North")
ben.read_instruction("llmr")

puts ben.x
puts ben.y
puts ben.current_direction




