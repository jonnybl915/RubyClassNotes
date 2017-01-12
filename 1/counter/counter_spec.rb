require 'rspec'
require ''

describe Counter do

  it 'increments correctly' do
    # setup / given
    c = Counter.new

    # exercise / when
    c.up
    c.up

    # make assertion here
    # Expectation / Then

    expect(c.count).to eq 2
  end

  it 'can start with a non-zero value' do
    counter = Counter.new(5)

    counter.up

    expect(counter.count).to eq 6

  end

  it 'can reset' do
    c = Counter.new(2)

    c.reset

    expect(c.count).to be_zero
  end
end