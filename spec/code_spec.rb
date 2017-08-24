require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

RSpec.describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5, 10)).to eq(30)
  end
end


RSpec.describe "average" do
  it "returns 60 for an average with the grades [50,60,70]" do
    expect(average([50,60,70])).to eq(60)
  end
end

RSpec.describe "rankings" do
  it "returns a vertically numerated list of names given Jake and Mike" do
    expect(rankings(["Jake"])).to match(/1. Jake/)
  end

  it "returns a vertically numerated list of names given Jake and Mike" do
    expect(rankings(["Jake","Mike"])).to match(/1. Jake\n2. Mike/)
  end
end

RSpec.describe "greet" do
  it "Returns 'Hola Jake!' with a name: Jake and language: spanish" do
    expect(greet("Jake", "spanish")).to match(/Hola Jake!/)
  end

  it "Returns 'Ciao Jake!' with a name: Jake and language: italian" do
    expect(greet("Jake", "italian")).to match(/Ciao Jake!/)
  end

  it "Returns 'Bonjour Jake!' with a name: Jake and language: french" do
    expect(greet("Jake", "french")).to match(/Bonjour Jake!/)
  end

  it "Returns 'Hi Jake!' with a name: Jake and no language given" do
    expect(greet("Jake")).to match(/Hi Jake!/)
  end
end

RSpec.describe "create_puzle" do
  it "returns 'c a t' if the word is cat and guess is c, a, t" do
    expect(create_puzzle("cat",["c","a","t"])).to match("c a t")
  end

  it "returns 'c _ t' if the word is cat and the guess is c, t" do
    expect(create_puzzle("cat",["c","t"])).to match("c _ t")
  end

  it "returns '_ _ _' if the word is cat and the guess is nil" do
    expect(create_puzzle("cat",[])).to match("_ _ _")
  end

  it "returns 'c _ _' if the word is cat and the guess is c, m, z" do
    expect(create_puzzle("cat",["c","m","z"])).to match("c _ _")
  end
end

RSpec.describe "divisible_by_three" do
  it "returns true if the number is divisble by 3" do
    expect(divisible_by_three(6)).to eq(true)
  end

  it "returns false if the number is not divisble by 3" do
    expect(divisible_by_three(7)).not_to eq(true)
  end
end

RSpec.describe "perfect_square?" do
  it "returns true if the square of current_number is greater than the given number, and increments current_number by 1, and repeats." do
    expect(perfect_square?(1)).to eq(true)
  end

  it "returns false if the square of current_number is less than the given number, and exits the loop" do
    expect(perfect_square?(2)).to eq(false)
  end

  it "returns an ArguementError if the number is less than 1" do
    expect {perfect_square?(0)}.to raise_error
  end
end
