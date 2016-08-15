
class Lexiconomitron
     def eat_t text
         text.gsub(/[tT]/,"")
      end

      def shazam arr
          [eat_t(arr.first.reverse!) , eat_t(arr.last.reverse!)]  
      end	
     
      def OompaLoompa arr
      	 arr_new = []
      	 arr.each do |a| 
      	    if a.length <= 3
               arr_new.push eat_t(a)

            end
        end
        arr_new
      end   
end

RSpec.describe Lexiconomitron do 
  describe "#eat_t" do
  	before :each do 
  		@lexi = Lexiconomitron.new
  	    end
    it "removes every letter t from the input" do
        expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
    it "removes every letter t from the input" do
       expect(@lexi.eat_t("scott! great")).to eq("sco! grea")
    end 
    it "removes every letter t from the input" do
       expect(@lexi.eat_t("SCOTT! GREAT")).to eq("SCO! GREA")
    end
    it "removes every letter t from the input" do
       expect(@lexi.shazam(['This', 'is', 'a', 'boring', 'test'])).to  eq(['sih','se'])
    end
    it "removes every letter t from the input" do
        expect(@lexi.shazam(['hoy', 'es', 'a', 'gnirob', 'lunes'])).to  eq(['yoh','senul'])
    end
    it "removes every letter t from the input" do
        expect(@lexi.OompaLoompa(['if', 'you', 'wanna', 'be', 'my', 'lover'])).to  eq(['if','you','be','my']) 
    end
     it "removes every letter t from the input" do
        expect(@lexi.OompaLoompa(['ift', 'yout', 'wannaT', 'be', 'myt', 'lovert'])).to  eq(['if','be','my']) 
    end
 end  

end