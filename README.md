# Phase 3 Project: Sinatra/React Application

## List Metaverse

This project has a web basic API built with Sinatra and Active Record that supports a frontend React application.

Congrats on getting through all the material for Phase 3! Now's the time to put
it all together and build something from scratch to reinforce what you know and
expand your horizons.

The application lets you make a todo-list and a shopping list.
Both todo items and shooping items can be tagged with different categories in a one-to-many relationship.
  - Each todo item belongs to a todo category and each todo category can have many todo items.
  - Similarly, each shopping item belongs to a shopping category and each shopping category can have many shopping items.

the application uses Active Record to interact with the database.

API routes built with Sinatra handle several different CRUD actions:
  - retrieving a list of todos from the server
  - adding a new todo to the todo list
  - removing a todo from the list
  - retrieving a list of shopping items from the server
  - adding a new shopping item to the shopping list
  - removing a shopping item from the list

The frontend application is located in the folder called "react_client"

'package.json' contains dependencies for the react component
  -> npm install 
'Gemfile' contains dependencies for the backend component
  -> bundle install