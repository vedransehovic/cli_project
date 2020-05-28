class Cli
    

    def run
        print_welcome
        Api.get_data
        Api.get_quote_data
        main
    end

    def main
        system "clear"
        id = print_menu
        get_character_details(id)
        print_search_again?
        continue?(prompt_selection)
    end


    def print_menu #prints the menu using ttl-prompt Gem
        prompt = TTY::Prompt.new
        prompt.enum_select("Welcome to the list of Breaking Bad Characters.\nEnter a number from the list to see more info about that character \n\n", Character.choices, per_page: 15)
    end

    def print_welcome
        puts "This is a list of Breaking Bad Characters."
    end

    def print_search_again?
        puts "Would you like to search again? (Y / N)"
    end

    def print_goodbye
        puts "Thank you for your interest. Goodbye."
    end

    def get_character_details(id)
        character = Character.all.find {|character| character.id == id}
        system "clear"
        ap "----------------------------------------------------------------"
        ap "NAME: #{character.name}"
        ap "NICKNAME: #{character.nickname}"
        ap "BIRTHDAY: #{character.birthday}"
        ap "ACTOR: #{character.actor}"
        ap "STATUS: #{character.status}"
        ap "OCCUPATION: #{character.occupation.join(", ")}" # converting an array to a string seperating each element with a comma and space for a better looking output
        ap "IMAGE: #{character.img}"
        ap "----------------------------------------------------------------"
        if character.quotes != []
            puts "These are some quotes by #{character.name}:\n\n"
            character.quotes.each do |line|
                puts "\t - #{line.quote}"
            end
            puts "\n\n"
        end
    end


    def prompt_selection
        gets.chomp
    end

    def continue?(response)
        response = response.upcase
        if response == "Y"
            main
        else
            print_goodbye
            exit
        end
    end


end