require 'rails_helper'


RSpec.describe Product, type: :model do

  before do
    category = Category.new

    @product = Product.new(:name => 'John', :price_cents => 30, :quantity => 5, :category => category)
    @product_fail = Product.new

    @product.save
    @product_fail.save
  end

  describe 'Validations' do

    it 'validates name is present' do
      expect(@product.name).to be_present
    end

    it 'validates price is present' do
      expect(@product.price_cents).to be_present
    end

    it 'validates quantity is present' do
      expect(@product.quantity).to be_present
    end

    it 'validates category is present' do
      expect(@product.category).to be_present
    end

    it 'validates when a value is not present' do
      expect(@product_fail.name).to be_nil
      expect(@product_fail.errors.full_messages).to include("Name can't be blank")
      expect(@product_fail.price_cents).to be_nil
      expect(@product_fail.errors.full_messages).to include("Price can't be blank")
      expect(@product_fail.quantity).to be_nil
      expect(@product_fail.errors.full_messages).to include("Quantity can't be blank")
      expect(@product_fail.category).to be_nil
      expect(@product_fail.errors.full_messages).to include("Category can't be blank")
    end
      
  end
end
