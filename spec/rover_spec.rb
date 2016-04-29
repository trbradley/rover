# require 'rover'
#
# describe Rover do
#   x_coordinate = 1
#   y_coordinate = 2
#   heading = :N
#   subject(:rover) { described_class.new(x_coordinate, y_coordinate, heading) }
#
#   # let(:direction) { double :direction }
#
#   # it 'initializes with an x coordinate' do
#   #   expect(rover.x_coordinate).to eq(1)
#   # end
#   #
#   # it 'initializes with a y coordinate' do
#   #   expect(rover.y_coordinate).to eq(2)
#   # end
#   #
#   # it 'initializes with a heading' do
#   #   expect(rover.heading.current_direction).to eq(:N)
#   # end
#
#   describe '#current_location' do
#     it 'returns the rovers current location' do
#       expect(rover.current_location).to eq("#{x_coordinate}, #{y_coordinate}, #{heading}")
#     end
#   end
#
#   describe '#change_heading' do
#     it 'changes a heading' do
#       new_heading = :W
#       expect_any_instance_of(Direction).to receive(:new_direction).with(:W)
#       rover.change_heading(new_heading)
#     end
#   end
# end
