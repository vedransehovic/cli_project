# cli_project
FlatIron CLI Project

Application is using following gems:
    *'pry'
    *'rest-client'
    *'json'

This project will make an API call to Breaking Bad Characters API at "https://www.breakingbadapi.com/api/characters" and pull the list of characters. From that lsit users will be presented with a choice to select a character.

Upon selection second API call will be made where additional information about character will be pulled and object instanciated. Information will be presented to the user.

Process will be repeated until user types exit! to exit the program.