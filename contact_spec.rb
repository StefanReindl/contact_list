require 'rspec'
require_relative 'contact'
 
describe Contact do
 
  
  # describe "initialization" do
 
  # end
 
  describe "#to_s" do
    it 'converts an instance of Contact to a string' do
      expect(contact.to_s).to be_a(String)
    end
  end
 
  
  # use . for class methods
  subject (:contact) { Contact.new('Stefan', 'email') }

  describe ".create" do
    it 'should create a new instance of Contacts in an array' do
      expect(Contact.create 'Stefan', 'email').to be_an(Array)
    end
  end
 
  # # use . for class methods
  # describe ".find" do
 
  # end
 
  # # use . for class methods
  describe ".all" do
    it 'should return an array with the index and contact info' do
      expect(Contact.all).to be_an(Array)
    end
  end
 
end