class Contact
 
  ## In-memory list of contacts
  @@contacts = []
 
  attr_accessor :name
  attr_accessor :email
 
  def initialize(name, email)
    @name = name
    @email = email
  end
 
  def to_s
    puts "#{@name}, #{email}"
  end
 
  ## Class Methods
  class << self
    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
      puts "What is the contact's first and last name?"
      name = gets.chomp.downcase
      puts "What is the contact's email?"
      email = gets.chomp.downcase
      contact = Contact.new(name, email)
      @@contacts << contact
      Application.new.run
    end
 
    def find(index)
      # TODO: Will find and return contact by index
    end
 
    def all
      # TODO: Return the list of contacts, as is
      @@contacts.each.with_index { |x| puts x.to_s }
      Application.new.run
    end
  end
 
end