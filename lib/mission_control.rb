class MissionControl
  def initialize
    @plateau = nil
    @rovers = []
    puts 'Welcome to the Mars Rover Mission Control'
  end

  def generate_plateau
    print 'Input grid size of plateau, separated by spaces (x y): '
    plateau_size = gets.chomp.split(' ')
    @plateau = Plateau.new(plateau_size[0], plateau_size[1])
    puts "Plateau consists of a #{plateau_size[0]} x #{plateau_size[1]} grid"
  end

  def generate_rover(rover_number)
    print 'Input rover coordinates and heading, separated by spaces (x y heading): '
    rover_info = gets.chomp.upcase.split(' ')
    @rovers[rover_number] = Rover.new(rover_info[0], rover_info[1], rover_info[2])
    deploy_rover(@rovers[rover_number])
    puts "Rover's current location and heading is #{@rovers[rover_number].current_location}"
  end

  def instruct_rover(rover_number)
    print 'Input movement instructions for rover (eg. LLMRM): '
    instructions = gets.chomp.upcase.split('')
    rover_instruction_parser(rover_number, instructions)
    puts "Rover's current location and heading is #{@rovers[rover_number].current_location}"
  end

  private

  def deploy_rover(rover)
    rover.deploy(@plateau)
  end

  def rover_instruction_parser(rover_number, instructions)
    instructions.each do |c|
      if    c == 'L'
        @rovers[rover_number].turn_left
      elsif c == 'R'
        @rovers[rover_number].turn_right
      elsif c == 'M'
        @rovers[rover_number].move
      else print "#{c} is not a valid instruction"
      end
    end
  end
end
