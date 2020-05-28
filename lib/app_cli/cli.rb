class Cli
    

    def run
        print_welcome
        Api.get_data
        Api.get_quote_data
        main
    end

    def main
        system "clear"
        #print_all
        id = print_menu
        #print_selection_prompt
        #id = id_validation(prompt_selection)
        get_character_details(id)
        print_search_again?
        continue?(prompt_selection)
    end

    def print_all
        Breakingbad.all.each {|character| puts "#{character.id}.) #{character.name}"}
    end

    def print_menu #prints the menu using ttl-prompt Gem
        prompt = TTY::Prompt.new
        prompt.enum_select("Welcome to the list of Breaking Bad Characters.\nEnter a number from the list to see more info about that character \n\n", Breakingbad.choices, per_page: 15)
    end

    def print_welcome
        puts "This is a list of Breaking Bad Characters."
    end

    def print_selection_prompt
        puts "Please select a character's number to get more information."
    end

    def print_error
        puts "Your selection is not valid, please try again. "
    end

    def print_search_again?
        puts "Would you like to search again? (Y / N)"
    end

    def print_goodbye
        puts "Thank you for your interest. Goodbye."
    end

    def get_character_details(id)
        character = Breakingbad.all.find {|character| character.id == id}
        quote = Quote.all.select {|quote| quote.author == character.name}
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
        if quote != []
            puts "These are some quotes by #{character.name}:\n\n"
            quote.each do |line|
                puts "\t - #{line.quote}"
            end
            puts "\n\n"
        end
    end


    def prompt_selection
        gets.chomp
    end

    def continue?(response)
        if response == "y"
            main
        else
            print_goodbye
            exit
        end
    end

    def id_validation(id)
        id = id.to_i
        if id < 1 || id > Breakingbad.all.size
            print_error
            sleep 1
            main
        end
        id
    end


end