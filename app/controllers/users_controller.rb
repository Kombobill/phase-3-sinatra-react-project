class UsersController < ApplicationController

  post '/login' do
    user = User.find_by_email_address(params[:email_address])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      user.to_json(include: :todos)
    else
      {error: "incorrect login credentials"}.to_json
    end
  end

  # GET: /users
  get '/users' do
    users = User.all
    users.to_json
  end

  # POST: /users
  post '/users' do
    user = User.create(
      username: params[:name],
      email_address: params[:email_address],
      password: params[:password],
      budget: params[:budget]
    )
    user.to_json
  end

  # GET: /users/5
  get '/users/:id' do
    user = User.find_by_id(params[:id])
    user.to_json
  end

  # PATCH: /users/5
  patch '/users/:id' do
    user = User.find_by_id(params[:id])
    user.update(
      username: params[:name],
      email_address: params[:email_address],
      password: params[:password],
      budget: params[:budget]
    )
    user.to_json
  end

  # DELETE: /users/5/delete
  delete '/users/:id' do
    user = User.find_by_id(params[:id])
    user.destroy
    user.to_json
  end
end