# -*- coding: utf-8 -*-
require "sinatra/base"
require "./twinkling/lib/authorization"

module Twinkling
  # authorization control class of Twinkling
  class Authorization < Sinatra::Base
    enable :sessions

    get "/login" do
      erb :login
    end

    post "/login" do
      session.clear
      @auth ||= ::Authorization.new
      if @auth.valid_login(params[:user], params[:password])
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
end
