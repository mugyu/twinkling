# -*- coding: utf-8 -*-
require "./twinkling"

run Rack::URLMap.new(
  "/" => Twinkling
)
