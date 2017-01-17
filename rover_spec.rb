require_relative 'rover'

describe Rover do
  it 'heads north by default' do
    r = Rover.new

    expect(r.direction).to eq :n
    expect(r.x).to eq 0
    expect(r.y).to eq 0
  end

  it 'can turn left once' do
    r = Rover.new

    r.left

    expect(r.direction).to eq :w
  end

  it 'can turn right' do
    r = Rover.new
    r.right
    r.forward

    expect(r.direction).to eq :e
    expect(r.x).to eq 1
    expect(r.y).to eq 0
  end

  it 'can follow directions' do
    r = Rover.new
    r.follow('LF')

    expect(r.direction).to eq :w
    expect(r.x).to eq -1
    expect(r.y).to eq 0
  end

  it 'can turn around' do
    r = Rover.new
    4.times { r.left }
    expect(r.direction).to eq :n
  end
end
