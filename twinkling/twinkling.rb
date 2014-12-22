# -*- coding: utf-8 -*-
require "sinatra/base"

# main class of Twinkling
class Twinkling < Sinatra::Base
  enable :sessions

  get "/" do
    pass if session[:is_login]
    redirect to("/login")
  end

  get "/" do
    erb :index
  end

  get "/login" do
    erb :login
  end

  post "/login" do
    params[:user] = params[:user]
    session[:is_login] = true
    redirect to("/")
  end

  post "/logout" do
    session.clear
    redirect to("/login")
  end
end
