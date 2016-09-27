class User < ApplicationRecord
    has_secure_password

    def self.authenticate(name, password)
        user = find_by(name: name)

        if user && user.authenticate(password)
            user
        else
            nil
        end
    end
end
