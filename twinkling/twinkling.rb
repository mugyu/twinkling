# -*- coding: utf-8 -*-
require "sinatra/base"

module Twinkling
  # main class of Twinkling
  class Twinkling < Sinatra::Base
    enable :sessions

    get "/" do
      pass if session[:user]
      redirect to("/login"), 303
    end

    get "/" do
      erb :index
    end
  end
end
