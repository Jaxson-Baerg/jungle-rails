require 'rails_helper'

RSpec.describe User, type: :model do

  before :all do
    @user = User.create(last_name: 'Smith', first_name: 'John', email: 'test@example.com  ', password: 'password', password_confirmation: 'password')
    @user_compare = User.create(last_name: 'Robertson', first_name: 'Bob', email: 'TEST@EXAMPLE.COM  ', password: 'password', password_confirmation: 'password')
    @user_fail = User.create
  end
  
  describe 'Validations' do

    it 'validates name is present' do
      expect(@user.first_name).to be_present
      expect(@user.last_name).to be_present
    end

    it 'validates email is present' do
      expect(@user.email).to be_present
    end

    it 'validates password is present' do
      expect(@user.password).to be_present
    end

    it 'validates when a value is not presenet' do
      expect(@user_fail.first_name).to be_nil
      expect(@user_fail.errors.full_messages).to include("First name can't be blank")
      expect(@user_fail.last_name).to be_nil
      expect(@user_fail.errors.full_messages).to include("Last name can't be blank")
      expect(@user_fail.email).to be_nil
      expect(@user_fail.errors.full_messages).to include("Email can't be blank")
      expect(@user_fail.password).to be_nil
      expect(@user_fail.errors.full_messages).to include("Password can't be blank")
    end

  end

  describe '.authenticate_with_credentials' do

    it 'throws error if email is not unique' do
      expect(@user_compare.errors.full_messages).to include("Email has already been taken")
    end

  end

end
