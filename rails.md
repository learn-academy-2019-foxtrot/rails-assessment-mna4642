# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer:
  
  Model handels the data such as animalcontroller.rb where we can allow for more additional routes.
  View handles the presentation such as being rendered with HTML, CSS and images.)
  Controller handles the application such as applicationcontroller.rb

  Researched answer:
  
Models represent knowledge. A model could be a single object (rather uninteresting), or it could be some structure of objects.
There should be a one-to-one correspondence between the model and its parts on the one hand, and the represented world as perceived by the owner of the model on the other hand.

A view is a (visual) representation of its model. It would ordinarily highlight certain attributes of the model and suppress others. It is thus acting as a presentation filter.
A view is attached to its model (or model part) and gets the data necessary for the presentation from the model by asking questions. It may also update the model by sending appropriate messages. All these questions and messages have to be in the terminology of the model, the view will therefore have to know the semantics of the attributes of the model it represents.

A controller is the link between a user and the system. It provides the user with input by arranging for relevant views to present themselves in appropriate places on the screen. It provides means for user output by presenting the user with menus or other means of giving commands and data. The controller receives such user output, translates it into the appropriate messages and pass these messages on to one or more of the views.


2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the __routes__ in the file config/routes.rb
    get '/about' => 'statics#about'

  Step 2: Create the ___controller ___ in the file ____controller.rb______
  ```
  class ___StaticsController_________ < ApplicationController
  def ___about________
    render ______about.html.erb__________
  end
end
  ```

  Step 3: Create the View in the file ____about.html.erb__________
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'
This route display all list and display in the index view.
/users/1      method="GET"     # :controller => 'users', :action => 'show'
This route show the parts of a URL to a particular post so it can be displayed in the show view.
/users/new    method="GET"     # :controller => 'users', :action => 'new
This route create an empty post and send the user to the New view for it (new.html.erb), which will have a form for creating the postgives you very readable links in your code, as well as handling incoming requests.
/users/       method="POST"    # :controller => 'users', :action => 'create'
This route create a new post based on the parameters that were submitted with the form (and are now available in the params hash)
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
This route find the post we want and send the user to the Edit view for it(edit.html.erb), which has a form for editing the post
/users/1      method="PUT"     # :controller => 'users', :action => 'update'
This route figure out which post we're trying to update, then actually update the attributes of that post.  Once that's done, redirect us to somewhere like the Show page for that post
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
This route find the post we're referring to and destroy it. Once that's done, redirect us to somewhere fun.


3b. Which of the above routes must always be passed params and why?
Update route and delete route because their row takes action one at a time. 


4. What is the public folder used for in Rails?

  Your answer:
  Public folder is used for public files in the application such as photos, webtext, errors, etc. 

  Researched answer
  The public directory contains some of the common files for web applications. 
  By default, HTML templates for HTTP errors, such as 404, 422 and 500, are generated along with a favicon and a robots.txt file. 
  Files that are inside this directory are available in https://appname.com/filename directly.



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

  GET '/game/:guess' => 'main#game'




6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer:
  Action attributes tells me which URL with data the user uses. HTTP verb is designated for the form by the server sent from the terminal. 

  Researched answer:
  The HTML | action Attribute is used to specify where the formdata is to be sent to the server after submission of the form.
  It can be used in the <form> element. 
  


7. Name two rails generator commands and what files they create:

  Your answer:
$ rails generate model Guitar color:string model:string
this generates the model class of guitar in guitar.rb and the guitar table is migrated with colors and model name. 
$ rails generate controller animal
this generates the controller AnimalsController and the view file in the app folder. 
  
  Researched answer:
$ rails generate controller
Usage: rails generate controller NAME [action action] [options]
$ rails generate controller Greetings hello
It made sure a bunch of directories were in our application, and created a controller file, a view file, a functional test file, a helper for the view, a JavaScript file, and a stylesheet file.


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1
Ruby originated in Japan and now it is gaining popularity in US and Europe as well. The following factors contribute towards its popularity −

Easy to learn
Open source (very liberal license)
Rich libraries
Very easy to extend
Truly object-oriented
Less coding with fewer bugs
Helpful community

2
 Basic Authentication
If you were to publish your blog online, anyone would be able to add, edit and delete articles or delete comments.

Rails provides a very simple HTTP authentication system that will work nicely in this situation.

In the ArticlesController we need to have a way to block access to the various actions if the person is not authenticated. Here we can use the Rails http_basic_authenticate_with method, which allows access to the requested action if that method allows it.
class ArticlesController < ApplicationController
 
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
 
  def index
    @articles = Article.all
  end
3.
8 Deleting Comments
Another important feature of a blog is being able to delete spam comments. To do this, we need to implement a link of some sort in the view and a destroy action in the CommentsController.

So first, let's add the delete link in the app/views/comments/_comment.html.erb partial:

<p>
  <strong>Commenter:</strong>
  <%= comment.commenter %>
</p>
 
<p>
  <strong>Comment:</strong>
  <%= comment.body %>
</p>
 
<p>
  <%= link_to 'Destroy Comment', [comment.article, comment],
               method: :delete,
               data: { confirm: 'Are you sure?' } %>
</p>

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:
  Cookies are filled with computer data from the webite the users logged into the webite exploere. The different between session and a cookie is that the datas in the cookies can be deleted and the datas in the session can be stored. 

  Researched answer:
  Cookies is a packet of data the computer receives and then, sends it back without changing or altering it.
  The main difference between a session and a cookie is that session data is stored on the server, whereas cookies store data in the visitor's browser. Sessions are more secure than cookies as it is stored in server. 
  Cookie can be turned off from browser.
