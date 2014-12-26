#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

lib = File.expand_path("../twinkling/lib", File.dirname(__FILE__))
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test/unit"
require "authorization"

# test/unit Authorization
class TestAuthorization < Test::Unit::TestCase
  def setup
    @auth = Authorization.new
  end

  def test_authenticate
    assert_equal(true, @auth.valid_login("mugyu", "twinkling"))
  end
end
