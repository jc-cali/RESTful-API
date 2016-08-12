require 'sinatra/base'

# files to install
require './controllers/home'
require './controllers/idea'
require './controllers/note'
require './models/idea'
require './models/note'

# map routes to classes
map('/')  { run HomeController }
map('/idea') { run IdeaController }
map('/notes') { run NotesController }
