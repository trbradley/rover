require './lib/parser/mission_control'
require './lib/models/rover'
require './lib/models/coordinates'
require './lib/models/direction'
require './lib/models/plateau'

mission_control = MissionControl.new
mission_control.generate_plateau
puts 'Now to deploy Rover No.1:'
mission_control.generate_rover(1)
mission_control.instruct_rover(1)
puts 'Now to deploy Rover No.2:'
mission_control.generate_rover(2)
mission_control.instruct_rover(2)
puts 'Thank you.'
puts 'Mission Accomplished!'
