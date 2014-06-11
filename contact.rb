class Contact
 
  @@contacts = []
 
  attr_accessor :name
  attr_accessor :email
 
  def initialize(name, email)
    @name = name
    @email = email
  end
 
  def to_s
     "#{@name}, #{email}"
  end
 
  class << self
    def create(name, email)
      contact = Contact.new(name, email)
      @@contacts << contact
    end
 
    def show(index)
      contact = @@contacts[index]
      puts "#{index}: (#{contact.to_s})"
    end

    def find(index)
      # TODO: Will find and return contact by index
    end
 
    def all
      @@contacts.each_with_index { |contact, index| puts "#{index}: (#{contact.to_s})" }
    end
  end
 
end