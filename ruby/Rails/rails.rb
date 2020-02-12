#/$$$$$$$  /$$   /$$ /$$$$$$$  /$$     /$$        /$$$$$$  /$$   /$$       /$$$$$$$   /$$$$$$  /$$$$$$ /$$        /$$$$$$
#| $$__  $$| $$  | $$| $$__  $$|  $$   /$$/       /$$__  $$| $$$ | $$      | $$__  $$ /$$__  $$|_  $$_/| $$       /$$__  $$
#| $$  \ $$| $$  | $$| $$  \ $$ \  $$ /$$/       | $$  \ $$| $$$$| $$      | $$  \ $$| $$  \ $$  | $$  | $$      | $$  \__/
#| $$$$$$$/| $$  | $$| $$$$$$$   \  $$$$/        | $$  | $$| $$ $$ $$      | $$$$$$$/| $$$$$$$$  | $$  | $$      |  $$$$$$
#| $$__  $$| $$  | $$| $$__  $$   \  $$/         | $$  | $$| $$  $$$$      | $$__  $$| $$__  $$  | $$  | $$       \____  $$
#| $$  \ $$| $$  | $$| $$  \ $$    | $$          | $$  | $$| $$\  $$$      | $$  \ $$| $$  | $$  | $$  | $$       /$$  \ $$
#| $$  | $$|  $$$$$$/| $$$$$$$/    | $$          |  $$$$$$/| $$ \  $$      | $$  | $$| $$  | $$ /$$$$$$| $$$$$$$$|  $$$$$$/
#|__/  |__/ \______/ |_______/     |__/           \______/ |__/  \__/      |__/  |__/|__/  |__/|______/|________/ \______/
# learning on ROR
#
#
#
# == DIRECTORIES ==
#
# /- app
#    -> contains subdirectories for each part of the mvc architecture
#    -> as well as assests, helpers, mailers
#    -> helpers directory contains ruby files with methods used by the views
#    -> mailers directory is for Ruby classes used to send emails
#  - bin
#    -> holds simple ruby scripts for bundle, rails, rake commands
#  - config
#    -> contains environment subdirectory for settings in (development, test, prod)
#    -> contains application.rb  which contains settings for all environments
#    -> contains database.yml which hold db configuration
#    -> contains routes.rb which maps addresses to controllers and actions
#  - db
#    -> contains seeds.rb to create default data
#    -> contains migrate directory for db migrations
#    -> contains schema.rb which is current state of applications db
#  - lib
#    -> used to put an reusable code you write
#    -> contains tasks dir which contains ruby scripts to automate actions
#  - log
#  - public
#  - test
#    -> contains subdir's with automated unite tests
#  - tmp
#     -> contains cached copies of you apps assets, process id files, user sessions
#  - vendor
#     -> holds assests by third-party gems that you add to you application
#     -> used by libraries/gems you did not write
#
#
#
# == RAILS COMMANDS ==
#  - GEM
#    -> this command is rarely used directly instead you should use bundler to manage gems
#  - BUNDLE
#    -> used to install and update gems
#  - RAKE
#    -> bin/rake --tasks to get available to tasks to your application
#  - RAILS
#    -> bin/rails to see if available options
#
#
#
#
#
# __  ____       _______
#|  \/  \ \    / / ____|
#| \  / |\ \  / / |
#| |\/| | \ \/ /| |
#| |  | |  \  / | |____
#|_|  |_|   \/   \_____|
#
# MODEL - VIEW - CONTROLLER
# Rails is web framework and this frame work is MVC based
#
#
#
#  /$$      /$$  /$$$$$$  /$$$$$$$  /$$$$$$$$ /$$        /$$$$$$
# | $$$    /$$$ /$$__  $$| $$__  $$| $$_____/| $$       /$$__  $$
# | $$$$  /$$$$| $$  \ $$| $$  \ $$| $$      | $$      | $$  \__/
# | $$ $$/$$ $$| $$  | $$| $$  | $$| $$$$$   | $$      |  $$$$$$
# | $$  $$$| $$| $$  | $$| $$  | $$| $$__/   | $$       \____  $$
# | $$\  $ | $$| $$  | $$| $$  | $$| $$      | $$       /$$  \ $$
# | $$ \/  | $$|  $$$$$$/| $$$$$$$/| $$$$$$$$| $$$$$$$$|  $$$$$$/
# |__/     |__/ \______/ |_______/ |________/|________/ \______/
# - data validations, database migrations, and model associations
#
#
# - MODELS represent the data in your application and the rules to manipulate that data
# - They also managae interactions between your application and a corresponding database table
# -> Suggested that business logic should be in models
#
# In the example below we generate a post scaffold
#  $ bin/rails generate scaffold Post title:string body:text
#
# This creates a model file called Post in app/models/post.rb
# ----------------------------------------
#  class Post < ActiveRecord::Base
#
#  end
# ---------------Figure 1 Post Class----------------------
#
# Figure one shows us our Post class that inherits from ActiveRecord::Base
#
#  == ACTIVE RECORD ==
# -> This is an implementation of object-relational mapping or ORM pattern
# -> It essentially maps our classes and tables as well as attribute and columns
#
# Imagine we have the following data in out Post Table -> Figure 2
#
#
# Figure 2 - The posts table
# +----+----------+------------------+------------+------------+
# | id |  title   |       body       | create_at  | updated_at |
# +----+----------+------------------+------------+------------+
# |  1 | hello    | welcome to...    |        ... |        ... |
# |  2 | My cat   | The cat in...    |        ... |        ... |
# |  3 | too busy | Too busy to post |        ... |        ... |
# +----+----------+------------------+------------+------------+
#  This table is represent by a Post class
#  - The post with an id of 1 can be represented by a Post object
#  - You can acccess the data associated with a single column by calling
#  - an attribute method on the object
#  - ie: post.title
#  - This known as direct manipulation
#
#  - CRUD
#  -  Active Record methods
#  -  Model.limit(n) - limit specifies how many records to return;
#  - Model.offset(n)
#  - .order
#  - .count
#  - .maximum
#
#  - Migrations
#  -> DB migrations are use anytime you need to change your DB structure
#  -> migrations are Ruby classes see example below
#
#  -----------------------------------------------
# class CreatePosts < ActiveRecord::Migration
#   def change
#     create_table :posts do |t|
#       t.string :title
#       t.text :body
#       t.timestamps
#     end
#   end
# end
# -----------------------------------------------
#
#  -> the change method is called when the migration is run and creates a table
#  -> named posts  with columns title, and body
#  -> the timestamps field refers to both created_at and updated_at columns
#  -> also rails automatically adds the id column
#
#  == The Schema ==
#  -> in addition to the migration files rails also stores you databases current state
#  -> you can see it in db/schema.rb check the example below
#  -----------------------------------------------
#  ActiveRecord::Schema.define(version: 20130523013959) do
#   create_table "posts", force: true do |t|
#     t.string   "title"
#     t.text     "body"
#     t.datetime "created_at"
#     t.datetime "updated_at"
#   end
#  end
#  -----------------------------------------------
#  ** this file should never be edited manually **
#
#  - Adding columns
#  -> $ bin/rails g migration add_author_to_posts author:string
#  - name your migration in the format add_ColumnName_to_TableName,
#  - and Rails will parse that to add what you need.
#  - will generate migration file for posts
#  ** You can name a migration anything you want, but you should follow the convention so you don’t have to edit the migration manually.*
#
#  - To ge the migration added you need to run bin/rake db:migrate
#  Which will generate the following the migration file:
#
# -----------------------------------------------
# class AddAuthorToPosts < ActiveRecord::Migration
#   def change
#     add_column :posts, :author, :string
#   end
# end
# -----------------------------------------------
# - The add_column method is called with the table_name, column_name and the column_tpye
#
# ** Active record also provides rename_column method for column name changes, and
#   remove_column method for removing a column from a table, and a change_column method
#   for changing a columns type and default values **
#
# == Validations ==
#  - Active record validations are sets of rules created to protect your data
#  - in this case since we are making a blog we should ensure all posts have a tile and we do that with a validation rule
#  -----------------------------------------------
#   class Post < ActiveRecord::Base
#     validates :title, :presence => true
#   end
# -----------------------------------------------
#  - this validates the presence of the text in the title field
#  - attempting to create a blog post with a blank title should now result in an error
#
# == Associations ==
#  - with more models there may be instances where you need to describe relationships between them
#  - Active record associations describe relationshios between models
#  - for our example we can associate posts and comments
#  - posts can have many comments and each comment belongs to a post
#  - This is considered a one-to-many  relationship which is common
#   -> $ bin/rails g model Comment author:string body:text post:references
#  - this will generate a new model for Comment
#  - that comments table will have an author column, body column, and post column
#  ** remember to run db migration after generating a model **
#  -> post:references option tells the rails generator to add a key to the comments table
#  - in this case the key is named post_id because it references a post
#  - now that we ran the migrations we need to edit our models to setup the associations
#
# == Adding Associations ==
# -----------------------------------------------
#   class Post < ActiveRecord::Base
#     validates :title, :presence => true
#     has_many :comments
#   end
# -----------------------------------------------
#  -> Here we add a method to the class called has_many which takes in a table_name
#  -> this tells the model that a Post can have many comments
#  - if we open the comment model we should see a reference to post
# -----------------------------------------------
#   class Comment < ActiveRecord::Base
#     belongs_to :post
#   end
# -----------------------------------------------
#  -> the rails generator has added a belongs_to method that references the post
#
# - Using associations
#  -> when you create an association rails will provide methods associated with the table
#
#  -> ie: method has_many :comments will define several methods that can be used with comments now
#
#  - if we call `comments` within the post -> will return array of comment for the post
#  - if use `comments<` -> will add an existing comment to the post
#  -  `comments=` -> will re-assign existing array of comments with whatever we provide(array)
#  -  `comment_ids` -> returns array of comment ids associated with post
#  - `comment_ids` -> we can replace the existing array comments with our own given ids[array]
#
#  - creating new comments in relation to a post
#  -> post.comments.build || post.comments.create
#  - both will create a comment belonging to the post and saves it to the DB and will assign a post_id
#
#  -> belongs_to :post  will provide several methods for the comment class/model
#  - since this is a singular instance of post we can only use a singular association for comments to post
#  - post  -> Will return single post that the current comment belongs to
#  - post= -> can reassign the current comment to different post
#  - build_post -> allows for building a new post for this comment
#  - create_post -> creates and saves a new post for this comment
#  - create_post! -> creates new post for this comment with errors if post is not valid
#
#
#    /$$$$$$   /$$$$$$  /$$   /$$ /$$$$$$$$ /$$$$$$$   /$$$$$$  /$$       /$$       /$$$$$$$$ /$$$$$$$   /$$$$$$
#   /$$__  $$ /$$__  $$| $$$ | $$|__  $$__/| $$__  $$ /$$__  $$| $$      | $$      | $$_____/| $$__  $$ /$$__  $$
#  | $$  \__/| $$  \ $$| $$$$| $$   | $$   | $$  \ $$| $$  \ $$| $$      | $$      | $$      | $$  \ $$| $$  \__/
#  | $$      | $$  | $$| $$ $$ $$   | $$   | $$$$$$$/| $$  | $$| $$      | $$      | $$$$$   | $$$$$$$/|  $$$$$$
#  | $$      | $$  | $$| $$  $$$$   | $$   | $$__  $$| $$  | $$| $$      | $$      | $$__/   | $$__  $$ \____  $$
#  | $$    $$| $$  | $$| $$\  $$$   | $$   | $$  \ $$| $$  | $$| $$      | $$      | $$      | $$  \ $$ /$$  \ $$
#  |  $$$$$$/|  $$$$$$/| $$ \  $$   | $$   | $$  | $$|  $$$$$$/| $$$$$$$$| $$$$$$$$| $$$$$$$$| $$  | $$|  $$$$$$/
#   \______/  \______/ |__/  \__/   |__/   |__/  |__/ \______/ |________/|________/|________/|__/  |__/ \______/
#
#  -> Rails controllers connect apps models and views.
#  -> Web requests sent to you app are routed to your controllers to get data from the model
#  -> and can handle logic from when those requests are made
#
#  -> REST - Representational state transfer
#   - in restful architectures clients initiate requests to servers
#   - servers process those requests and return responses to the clients
#                   _ _ _ _ _ _
#                  |  client   |
#                 |___________|
#                    |   /\
#                   |    |
#                  \/   |
#                  _ _ _ _ _ _
#                 | server   |
#                |___________|
#
#
#   -> In a rails app, the server that processes the requests return the responses to the controller
#    - The controller is interacting with the client via URLS, and HTTP verbs
#    - the following figure(3) shows the HTTPs verbs used in rest
#
#    Figure 3 - Table for Mapping DB actions to http verbs
#       +-----------------+-----------+
#       | Database Action | HTTP verb |
#       +-----------------+-----------+
#       | Create          | POST      |
#       | Read            | GET       |
#       | Update          | PATCH     |
#       | Delete          | DELETE    |
#       +-----------------+-----------+
#
#        Figure 4 - Table for default restful actions on rails
#       +----------+--------------------------------+-----------+
#       |  Action  |          Description           | HTTP Verb |
#       +----------+--------------------------------+-----------+
#       | index    | List all records               | GET       |
#       | show     | list a record                  | GET       |
#       | new      | Show form to create new record | GET       |
#       | edit     | Show form to edit record       | GET       |
#       | create   | Create new record              | POST      |
#       | update   | Update existing record         | PATCH     |
#       | destroy  | Destroy existing record        | DELETE    |
#       +----------+--------------------------------+-----------+
#
#   -> Rails incorporates its own actions other than the four common rest actions
#   -> index action - displays all resources
#   -> new action - used for forms for creating a new resource
#   -> edit action - displays a form for editing existing resource
#   * these actions have a corresponding method in the controller that has logic to access
#    the database to fulfill these requests
#   example:
# -----------------------------------------------
#     class PostsController < ApplicationController
#       def index
#          @posts = Post.all
#       end
#     end
# -----------------------------------------------
#
#  == ROUTING ==
#  -> The only way to get our controllers to perform the actions needed from the client
#     we need to setup routes that can map the actions to our verbs
#  -> Routes connect URLs to the code that compromises your application
#
#  * Resources *
#  -> first application routes are located in config/routes.rb
#  -> By default rails uses REST
#
#  Example of our posts routes
# -----------------------------------------------
#     Rails.application.routes.draw do
#       resources :posts
#     end
# -----------------------------------------------
#  -> using bin/rake routes in your cli will expose the current routes for your app
# -----------------------------------------------
#  $ bin/rake routes
# Prefix Verb   URI Pattern        Controller#Action
#  posts GET    /posts(.:format)   posts#index
#      POST     /posts(.:format)   posts#create
# -----------------------------------------------
#  -> This information can help determine what verbs, url patterns, and controller actions
#     are setup for your routes
#  -> for example we can see that a GET request to /posts will hit our PostsController
#     and hit the index method on the controller
#  -> when you make changes to your app your routes will also change so run this command
#     when needed
#
#  * Nested Resources *
#  -> Resources can be used to to represent how resources can be used based off another resource
#  -> When one resource belongs to another they can be added as a nested resource
#  - config/routes.rb
# -----------------------------------------------
#   resources :posts do
#     resources :comments
#   end
# -----------------------------------------------
#  -> the following shows that
#  -> comments are only available inside of posts
#  -> routes will be generated for comments
#  * to restrict set of routes for a generated resource we can add an only clause
# -----------------------------------------------
#   resources :posts do
#     resources :comments, only :create
#   end
# -----------------------------------------------
#  * ^ comments routes will only be mapped to create action
#
#  == Custom Routes ==
# -----------------------------------------------
#  Rails.application.routes.draw do
#     resources :posts do
#       resources :comments, :only => :create
#     end
#     get 'login'  => 'user_sessions#new'
#     post 'login' => 'user_session#create'
#     delete 'logout' => 'user_sessions#destroy'
#  end
# -----------------------------------------------
#  -> we can define custom routes as well for our application
#  ->  /login on initial load will use http get and will hit user_session controller and new method
#     - will present a login form
#  ->  /login with creds will use post -> will use controller -> user_session#create
#  -> /logout will will use delete -> will use controller user_sessions#destroy
#
# == Root Route ==
# -----------------------------------------------
#  Rails.application.routes.draw do
#     resources :posts do
#       resources :comments, :only => :create
#     end
#     root 'posts#index'
#  end
# -----------------------------------------------
#  -> when accessing your applications server, the path will display the posts index page
#  -> root will set the homepage for your application
#
# == Controller Actions ==
#
#
#
#   /$$    /$$ /$$$$$$ /$$$$$$$$ /$$      /$$  /$$$$$$
#  | $$   | $$|_  $$_/| $$_____/| $$  /$ | $$ /$$__  $$
#  | $$   | $$  | $$  | $$      | $$ /$$$| $$| $$  \__/
#  |  $$ / $$/  | $$  | $$$$$   | $$/$$ $$ $$|  $$$$$$
#   \  $$ $$/   | $$  | $$__/   | $$$$_  $$$$ \____  $$
#    \  $$$/    | $$  | $$      | $$$/ \  $$$ /$$  \ $$
#     \  $/    /$$$$$$| $$$$$$$$| $$/   \  $$|  $$$$$$/
#      \_/    |______/|________/|__/     \__/ \______/
#
#
#

#
#
#
#
#
#
#
#






