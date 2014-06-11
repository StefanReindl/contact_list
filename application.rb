class Application
 
  def run
    show_main_menu
    input = gets.chomp.downcase
    case input
      when 'quit'
        abort("Good-bye")
      when 'new'
        puts "What is the contact's first and last name?"
        name = gets.chomp.downcase
        puts "What is the contact's email?"
        email = gets.chomp.downcase
        Contact.create(name, email)
        run
      when 'list'
        Contact.all
        run
      else run
    end
  end
 
  private
 
  # Prints the main menu only
  def show_main_menu
    puts "Welcome to the app. What's next?"
    puts " new      - Create a new contact"
    puts " list     - List all contacts"
    puts " quit     - Exit Application"
    print "> "
  end


end