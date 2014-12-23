# -*- coding: utf-8 -*-
require "sinatra/base"

# authorization class of Twinkling
class Authorization < Sinatra::Base
  enable :sessions

  def users
    { mugyu: "0w7XLqiIIwsT." }
  end

  def valid_login(user, password)
    return false unless users.key? user.to_sym
    password.crypt(users[user.to_sym]) == "0w7XLqiIIwsT."
  end

  get "/login" do
    erb :login
  end

  post "/login" do
    session.clear
    if valid_login(params[:user], params[:password])
      session[:user] = params[:user]
      return redirect to("/"), 303
    end
    redirect to("/login"), 303
  end

  post "/logout" do
    session.clear
    redirect to("/login"), 303
  end
end
