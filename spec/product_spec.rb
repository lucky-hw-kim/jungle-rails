require 'rails_helper'

RSpec.describe Product, type: :model do

  before :each do

    @category = Category.new name: 'test'

  end

  describe 'Validations' do

    it 'should save four field successfully' do  
      @product = Product.new(name: 'greenTree', price: 200, quantity: 20, category: @category)
      @product.save
      expect(@product).to be_present
    end

    it 'should not validate without name' do 
      @product2 = Product.new(name: nil, price: 200, quantity: 20, category: @category)
      expect(@product2).to_not be_valid
      expect(@product2.errors.full_messages).to include("Name can't be blank")
    end

    it 'should not validate without price' do 
      @product2 = Product.new(name: 'catTree', price_cents: nil, quantity: 20, category: @category)
      expect(@product2).to_not be_valid
      expect(@product2.errors.full_messages).to include("Price can't be blank")
    end

    it 'should not validate without quantity' do  
      @product2 = Product.new(name: 'catTree', price: 3444, quantity: nil, category: @category)
      expect(@product2).to_not be_valid
      expect(@product2.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'should not validate without category' do  
      @product2 = Product.new(name: 'catTree', price: 1200, quantity: 20, category: nil)
      expect(@product2).to_not be_valid
      expect(@product2.errors.full_messages).to include("Category can't be blank")
    end

  end

end
