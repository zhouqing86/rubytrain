require 'spec_helper'

# multiple format for rspec
# rspec -f Fuubar -f html -o specs.html spec/
describe Calculator do 
	it "should add two number correctly" do
		expect(Calculator.add(1,2)).to be 3
	end

	context "Just for spec function test" do
		it "test should expect(subject).to equal(value) or other thing" do
			a = "abc"
			b = "abc"
			# a.should eq b
			expect(a).to eq b
		end

		it "test collections" do

		end
	end
end

