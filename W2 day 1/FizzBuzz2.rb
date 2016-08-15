

class FizzBuzz
    def check number
    	if (number % 3) == 0
    		"Fizz"
    	elsif (number % 5) ==0
    		"buzz"
    	else (number) 			
        end
    end    
end   




RSpec.describe "FizzBuzz Tests" do 
	it "returns fizz if multiple of 3" do 
		expect(FizzBuzz.new.check(6)).to eq("Fizz")
	end
	it "returns buzz if multiple of 5" do 
		expect(FizzBuzz.new.check(5)).to eq("buzz")
	end

	it "returns the number" do 
		expect(FizzBuzz.new.check(1)).to eq(1)
	end
end