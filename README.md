# Mars Rover Problem

This is a submission for the Mars Rover Problem.  
It was written using Ruby 2.3.0 and tested with RSpec.

## Problem

A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on­board cameras can get a complete view of the surrounding terrain to send back to Earth.  

### Usage

The plateau is divided up into a grid to simplify navigation.  
A rover’s position and location is represented by a combination of `x` and `y` co­ordinates and a `letter` representing one of the four cardinal compass points. An example position might be `0 0 N`, which means the rover is in the bottom left corner and facing North.  

In order to control a rover, NASA sends a simple string of letters. The possible letters are:  
* `L` - Makes the rover spin 90 degrees left without moving.  
* `R` - Makes the rover spin 90 degrees left without moving.  
* `M` - Rover moves forward one grid point and maintains the same heading.  

## Installation

Navigate to the root directory of the repository.  
Install bundler and rspec (if you haven't already got them).
```
cd mars-rover
gem install bundle
bundle install
```

To run the app:
```
ruby app.rb
```

and to run the tests:
```
rspec
```

## Approach

I used Test Driven Development to write the solution, first writing a test to fail, before then writing code to do the minimum to pass it, refactor and repeat. To begin with, approached the problem by thinking about what the actions and responsibilities of each component/class would be, in order to have some idea about how I would structure my code. This led to starting with models of coordinates and then direction, and moving upwards from there. This had the consequence of running out of time when it came to implementing the command-line interface. As such, I was forced to abandon testing the mission control/input parser in favour of having a working interface. The `app.rb` file itself provides a single point of entrance to the program, utilising the mission control class.

### Assumptions

* Users obey input format and instructions. Some basic input handling has been implemented though.
* Rovers can occupy the same position.
* Rovers cannot move outside the boundary of the plateau. Doing so will currently result in an out-of-bounds error.

### Refactoring + Future Work

* Adding some mission control/user interface tests.  
* Refactoring to properly follow Command Design Pattern.
* Maybe implementing some sort of parser class/subclasses to better handle user input.
* Better error handling for user input, boundary checks and rovers occupying the same space.  
* Command line interface with further interactions possible.  

## File structure
```
├── lib
│   ├── models
│   │   ├── coordinates.rb
│   │   ├── direction.rb
│   │   ├── plateau.rb
│   │   └── rover.rb
│   └── parser
│       └── mission_control.rb
└── spec
    ├── coordinates_spec.rb
    ├── direction_spec.rb
    ├── plateau_spec.rb
    ├── rover_spec.rb
    └── spec_helper.rb
```


By [Tom Bradley](https://github.com/trbradley/)
