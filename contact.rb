class Contact
 
  ## In-memory list of contacts
  @@contacts = ['Stefan Reindl', 'stefan.reindl@gmail.com']
 
  attr_accessor :name
  attr_accessor :email
 
  def initialize(name, email)
    @name = name
    @email = email
  end
 
  def to_s
    # TODO: return string representation of Contact
  end
 
  ## Class Methods
  class << self
    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
      puts "What is the contact's first and last name?"
      name = gets.chomp.downcase
      @@contacts << name
      puts "What is the contact's email?"
      email = gets.chomp.downcase
      @@contacts << email
      Contact.new(name, email)
      Application.new.run
    end
 
    def find(index)
      # TODO: Will find and return contact by index
    end
 
    def all
      # TODO: Return the list of contacts, as is
      @@contacts.each_with_index {|x| puts x }
      Application.new.run
    end
  end
 
end