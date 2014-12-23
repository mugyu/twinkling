# -*- coding: utf-8 -*-
require "./twinkling/twinkling"
require "./twinkling/authorization"

map "/twinkling" do
  use Authorization
  run Twinkling
end
