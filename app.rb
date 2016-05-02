require './lib/mission_control'
require './lib/rover'
require './lib/coordinates'
require './lib/direction'
require './lib/plateau'

mission_control = MissionControl.new
mission_control.generate_plateau
mission_control.generate_rover
mission_control.instruct_rover
mission_control.generate_rover
mission_control.instruct_rover
