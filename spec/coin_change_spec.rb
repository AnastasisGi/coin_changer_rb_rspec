require_relative '../src/changer'

describe 'Coin change logic ' do 
    
    it 'cam make a new object ' do
        amount=Changer.new 

    end

    it 'Returns one penny for 1' do 
        amount=Changer.new 
        
        expect(amount.change 1).to eq([1])
    end

    it 'Returns two penies for 2 ' do 
        amount=Changer.new  
        expect(amount.change 2).to eq([1,1])

    end

    it'returns a nickle for 5' do 
        amount=Changer.new 
        expect(amount.change 5).to eq([5])    
    end
 
    it'returns a dime for 10' do 
        amount=Changer.new 
        expect(amount.change 10).to eq([10])    
    end


    it'returns four pennies and one dime for 14 ' do 
        amount=Changer.new
        expect(amount.change 14).to eq([10,1,1,1,1])
    end


      it'returns four pennies and one dime for 39 ' do 
        amount=Changer.new
        expect(amount.change 39).to eq([10,10,10,5,1,1,1,1])
    end


end