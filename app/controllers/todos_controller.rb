class TodosController < ApplicationController

  # GET: /todos
  get '/todos' do
    Todo.all.to_json
  end

  # POST: /todos
  post '/todos' do
    todo = Todo.create(
      title: params[:title],
      todo_category_id: params[:todo_category_id],
      completed: false
    )
    todo.to_json
  end

  # GET: /todos/5
  get '/todos/:id' do
    if Todo.find_by_id(params[:id])
      Todo.find_by_id(params[:id]).to_json
    else
      {error: "Record not found with id #{params['id']}"}.to_json
    end
  end

  # PATCH: /todos/5
  patch '/todos/:id' do
    todo = Todo.find_by_id(params[:id])
    todo.update(
      title: params[:title],
      todo_category_id: params[:todo_category_id],
      completed: params[:completed]
    )
    todo.to_json
  end

  # DELETE: /todos/5/delete
  delete '/todos/:id' do
    todo = Todo.find_by_id(params[:id])
    if todo
      todo.destroy
      {message: "Record successfully destroyed"}.to_json
    else
      {error: "Record not found with id #{params['id']}"}.to_json
    end
  end
end