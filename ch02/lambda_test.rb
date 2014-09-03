one_lambda = lambda { return 100 }
one_proc = proc { return 100 }

def meth(&block)
  block.call
end

# lambda return to block.call position
p meth(&one_lambda)       # => 100

a = [ "a", "b", "c", "d" ]
p a.collect { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]
p a.map.with_index{ |x, i| x * i } #=> ["", "b", "cc", "ddd"]
p a                                #=> ["a", "b", "c", "d"]

def meth
	p 'Hello'
end

meth

# Sum some numbers
p (5..10).reduce(:+)                             #=> 45
# Same using a block and inject
p (5..10).inject { |sum, n| sum + n }            #=> 45
# Multiply some numbers
p (5..10).reduce(1, :*)                          #=> 151200
# Same using a block
p (5..10).inject(1) { |product, n| product * n } #=> 151200
# find the longest word
longest = %w{ cat sheep bear }.inject do |memo, word|
   memo.length > word.length ? memo : word
end
p longest                                        #=> "sheep"


def rome
	books = {
		:M => 1000,
		:CM => 900
	}

	books.each{ |r,n| puts "#{r},#{n}"}
end

rome

p (0...10).map{ ('a'..'z').to_a[rand(26)] }
p ('a'..'z').to_a[rand(26)] 
p ('a'..'z').to_a[2] 
p (0...10).map{ ('a'..'z').to_a[rand(26)] }.join