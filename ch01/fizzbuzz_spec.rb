require "./fizzbuzz"

describe Fizzbuzz, "#feedBack" do
  before(:each) do
    @f = Fizzbuzz.new
  end

 it 'return fizzbuzz to multiples of 15 ' do
  #  f = Fizzbuzz.new
   for i in 1..100 do
     expect(@f.feedBack(i*15)).to eq("fizzbuzz")
   end
  #  for i in 1..100 do
  #    if(i % 15 == 0)
  #      next
  #    end
  #    expect(f.feedBack(i*15)).to eq("fizzbuzz")
  #  end
 end

 it 'return buzz to multiples of 5 ' do
  #  f = Fizzbuzz.new
   for i in 1..100 do
     if(i % 3 == 0)
        next
     end
     expect(@f.feedBack(i*5)).to eq("buzz")
   end
 end

  it 'return fizz to multiples of 3 ' do
    # f = Fizzbuzz.new
    for i in 1..100 do
      if(i % 5 == 0)
         next
      end
      expect(@f.feedBack(i*3)).to eq("fizz")
    end
  end

  it 'return none to others' do
    #  f = Fizzbuzz.new
     for i in 1..100 do
       if(i % 3 == 0 || i % 5 == 0)
         next
       end
       expect(@f.feedBack(i)).to eq("none")
     end
  end
end

describe Fizzbuzz, "#sub" do
  it 'should return add result' do
     f = Fizzbuzz.new
     expect(f.add(1,2)).to be(3)
  end
end
