require 'spec_helper.rb'

describe "palindrome?" do

	it "returns 'true' for 'a'" do
		expect(palindrome?("a")).to eq true
	end

	it "returns 'true' for 'rotor'" do
		expect(palindrome?("rotor")).to eq true 
	end

	it "returns 'false' for 'motor'" do
		expect(palindrome?("motor")).to eq false 
	end

	it "returns 'false' for 'jon olson'" do
		expect(palindrome?("jon olson")).to eq false
	end

	it "returns 'true' for 'x13 4 &#& 4 31x'" do
		expect(palindrome?("x13 4 &#& 4 31x")).to eq true 
	end

end

