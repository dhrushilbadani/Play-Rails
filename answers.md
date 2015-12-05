# Q0: Why is this error being thrown?
This is because Pokemon is not defined in the Home Controller.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They're all random choices from the Pokemons in the database.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It's a button that goes to capture_path as a PATCH request.
# Question 3: What would you name your own Pokemon?
I would name it Trump, which has 3 moves - racism, sexism and funnyFace.
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed trainer_path current_trainer to redirect_to. This sets the id to the id of the current trainer. There's no need for a path, just use current_trainer
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
In the flash hash, the error key would map to the errors for pokemon, formatted into sentence form.
# Give us feedback on the project and decal below!
Chill project, good to solidify understanding.
# Extra credit: Link your Heroku deployed app
https://github.com/dhrushilbadani/proj1