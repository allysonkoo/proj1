# Q0: Why is this error being thrown?
There is no HomeController in the app/controllers folder. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The provided seed file contains the four Pokemon that will appear at random on the home page. 

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This creates a form with a button that submits to the URL created by the options. 

# Question 3: What would you name your own Pokemon?

Ruby

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed a path into redirect_to. I used the path for the page that I wanted the function to redirect to (such as trainer_path). It's okay to not have a path because redirect_to can take a variety of options, including hashes, records, strings, and more.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

The flash function displays a banner containing your error message at the top of the form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
