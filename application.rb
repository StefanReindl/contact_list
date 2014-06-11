class Application
 
  def run
    show_main_menu
    input = gets.chomp.downcase
    case input
      when 'quit'
        abort("Good-bye")
      when 'new'
        Contact.create(:name, :email)
      when 'list'
        Contact.all
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