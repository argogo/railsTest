require 'rails_helper'

describe Person do
  context "first and last name present" do
    let(:person) { Person.new(first_name: "John", last_name:"Smith") }

    it "should return first and last" do
      expect(person.full_name).to eq "John Smith"
    end
  end

  context "first name missing" do
    let(:person) { Person.new(last_name: "Smith") }
    
    it should "should return last name only" do
      expect (person.full_name).to eq "Smith"
    end
  end

  context "last name missing" do 
    let(:person) { Person.new(first_name:"John")}

    it should "return first name only" do
      expect (person.full_name).to eq "John"
    end
  end

  context "no names present" do
    let(:person) { Person.new() }

    it "should return nothing" do
      expect (person.full_name).to eq ""
    end
  end
end