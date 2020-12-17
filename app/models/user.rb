class User < ActiveRecord::Base
    has_many :courses
    has_many :assignments

    has_secure_password
    validates :name, presence: true
    validates :email, uniqueness: true

    def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
          user.name = auth.info.name
          user.email = auth.info.email
          user.password = SecureRandom.hex
        end
    end
end