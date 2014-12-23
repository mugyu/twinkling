# -*- coding: utf-8 -*-
require "sinatra/base"

# main class of Twinkling
class Twinkling < Sinatra::Base
  enable :sessions

  get "/" do
    pass if session[:user]
    redirect to("/login")
  end

  get "/" do
    erb :index
  end

  get "/login" do
    erb :login
  end

  post "/login" do
    session.clear
    if valid_login(params[:user], params[:password])
      session[:user] = params[:user]
      return redirect to("/")
    end
    redirect to("/login")
  end

  post "/logout" do
    session.clear
    redirect to("/login")
  end

  @@users = {:"mugyu" => "0w7XLqiIIwsT."}

  def valid_login(user, password)
    return false unless @@users.has_key? user.to_sym
    params[:password].crypt(@@users[user.to_sym]) == "0w7XLqiIIwsT."
  end
end
