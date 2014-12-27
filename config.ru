# -*- coding: utf-8 -*-
require "./twinkling/twinkling"
require "./twinkling/auth"

map "/twinkling" do
  use Twinkling::Auth
  run Twinkling::Twinkling
end
