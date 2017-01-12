require 'rspec'
require_relative 'fizzbuzzer'

describe Fizzbuzzer do

  it 'works' do
    expect(1 + 1).to eq 2
  end

  skip 'actually works' do
    f = Fizzbuzzer.new

    f.register_new_rule(4, 'Cat')
    f.register_new_rule(5, 'Dog')
    results = [
        1,
        2,
        3,
        'Cat',
        'Dog',
        6,
        7,
        'Cat',
        8,
        9,
        'Dog',
        11,
        'Cat',
        13,
        14,
        'Dog',
        'Cat',
        17,
        18,
        19,
        'CatDog',
        21,
        22
    ]
    expect(f.run 22).to eq results
  end

  it 'can register and replace on number' do
    f = Fizzbuzzer.new
    f.register_new_rule(3, 'Fizz')

    #apply f to one number
    result = f.apply_one(3)

    #check result
    expect(result).to eq 'Fizz'
  end

  it 'replaces multiples' do
    f = Fizzbuzzer.new
    f.register_new_rule(3, 'Fizz')

    result = f.apply_one(6)

    expect(result).to eq 'Fizz'
  end

  it 'can register multiple numbers' do
    #given a FB
    f = Fizzbuzzer.new

    # When I register multiple numbers
    f.register_new_rule(2, 'A')
    f.register_new_rule(3, 'B')

    expect(f.rule_for 2 ).to eq 'A'
    expect(f.rule_for 3).to eq 'B'

  end

  it 'can apply multiple rules' do
    f = Fizzbuzzer.new

    f.register_new_rule(4, 'Cat')
    f.register_new_rule(5, 'Dog')

    expect(f.apply_one 20).to eq 'CatDog'
  end

  it 'can apply the second rule' do
    f = Fizzbuzzer.new

    f.register_new_rule(4, 'Cat')
    f.register_new_rule(5, 'Dog')

    expect(f.apply_one 5).to eq 'Dog'
  end
end
