class TodoCategoriesController < ApplicationController

  # GET: /todo_categories
  get '/todo_categories' do
    todo_categories = TodoCategory.all
    todo_categories.to_json
  end

  # POST: /todo_categories
  post '/todo_categories' do
    todo_category = TodoCategory.create(name: params[:name])
    todo_category.to_json
  end

  # GET: /todo_categories/5
  get '/todo_categories/:id' do
    todo_category = TodoCategory.find_by_id(params[:id])
    todo_category.to_json
  end

  # PATCH: /todo_categories/5
  patch '/todo_categories/:id' do
    todo_category = TodoCategory.find_by_id(params[:id])
    todo_category.update(
      name: params[:name]
    )
    todo_category.to_json
  end

  # DELETE: /todo_categories/5/delete
  delete '/todo_categories/:id' do
    todo_category = TodoCategory.find_by_id(params[:id])
    todo_category.destroy
    todo_category.to_json
  end
end