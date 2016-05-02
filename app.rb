require './lib/mission_control'
require './lib/rover'
require './lib/coordinates'
require './lib/direction'
require './lib/plateau'

mission_control = MissionControl.new
mission_control.generate_plateau
mission_control.generate_rover(1)
mission_control.instruct_rover(1)
mission_control.generate_rover(2)
mission_control.instruct_rover(2)
puts 'Thank you.'
puts 'Mission Accomplished!'
