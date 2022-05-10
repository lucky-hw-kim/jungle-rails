require 'rails_helper'

RSpec.describe User, type: :model do

  describe "Validation" do
    it "should create and save valid user" do
      @user = User.new(first_name: "John", last_name: "Doe", email: "john@example.com", password: '1234', password_confirmation: '1234')
      @user.save
      expect(@user).to be_present
    end

    it "should not validate without a password" do
      @user = User.new(first_name: "John", last_name: "Doe", email: "john@example.com", password: nil, password_confirmation: '1234')
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it "should not validate without a password confirmation" do
      @user = User.new(first_name: "John", last_name: "Doe", email: "john@example.com", password: '1234', password_confirmation: nil)
      expect(@user).to_not be_valid
    end

    it "should not validate when password and password confirmation are not same" do
      @user = User.new(first_name: "John", last_name: "Doe", email: "john@example.com", password: '1234', password_confirmation: '2345')
      expect(@user).to_not be_valid
    end

    it "should not validate when same email exists" do
      @user1 = User.create(first_name: "John", last_name: "Doe", email: "test@example.com", password: '2234', password_confirmation: '2234')
      @user2 = User.create(first_name: "Jane", last_name: "Doe", email: "TEST@example.com", password: '1234', password_confirmation: '1234')
      expect(@user2).to_not be_valid
    end

    it "should not validate without first name" do
      @user = User.create(first_name: nil, last_name: "Doe", email: "test@example.com", password: '2234', password_confirmation: '2234')
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include "First name can't be blank"
    end

    it "should not validate without email" do
      @user = User.create(first_name: "John", last_name: "Doe", email: nil, password: '2234', password_confirmation: '2234')
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include "Email can't be blank"

    end

    it "should not validate without last name" do
      @user = User.create(first_name: "John", last_name: nil, email: "test@example.com", password: '2234', password_confirmation: '2234')
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include "Last name can't be blank"
    end

    it "should have minimum length of 4" do
      @user = User.new(first_name: "John", last_name: "Doe", email: "john@example.com", password: '123', password_confirmation: '123')
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include "Password is too short (minimum is 4 characters)"
    end

  end

  describe '.authenticate_with_credentials' do

    before :each do
      @user = User.create(id: "1", first_name: "John", last_name: "Doe", email: "john@example.com", password: "1234", password_confirmation: '1234')
    end

    it "should not let user login without email" do
      @user_login = User.authenticate_with_credentials(nil,'1234')
      expect(@user_login).to be false
    end

    it "should not let user login without password" do
      @user_login = User.authenticate_with_credentials("test@example.com",nil)
      expect(@user_login).to be false
    end

    it "should not let user login with invalid email and password" do
      @user_login = User.authenticate_with_credentials("john@example.com",'123456789')
      expect(@user_login).to be false
    end

    it "should let user login with valid email and password" do
      @user_login = User.authenticate_with_credentials("john@example.com", "1234")
      expect(@user_login).to eq @user
    end

    it "should let user login with some space before and/or after email" do
      @user_login = User.authenticate_with_credentials("    john@example.com ", '1234')
      expect(@user_login).to eq @user
    end

    it "should let user login with different case email" do
      @user_login = User.authenticate_with_credentials("JOHN@EXAMPLE.com", '1234')
      expect(@user_login).to eq @user
    end
  end

end


