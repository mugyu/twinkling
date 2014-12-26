# -*- coding: utf-8 -*-

# authorization class of Twinkling
class Authorization
  def users
    { mugyu: "0w7XLqiIIwsT." }
  end

  def valid_login(user, password)
    return false unless users.key? user.to_sym
    password.crypt(users[user.to_sym]) == "0w7XLqiIIwsT."
  end
end
