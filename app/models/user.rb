class User < ApplicationRecord
  has_secure_password

  def self.authenticate(name, password)
    user = find_by(name: name)

    user if user && user.authenticate(password)
  end
end
