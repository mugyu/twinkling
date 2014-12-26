# -*- coding: utf-8 -*-
require "./twinkling/twinkling"
require "./twinkling/authorization"

map "/twinkling" do
  use Twinkling::Authorization
  run Twinkling::Twinkling
end
