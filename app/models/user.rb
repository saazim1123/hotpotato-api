class User < ApplicationRecord
    has_many :questions
    validates :username, uniqueness: true

    has_secure_password


    def token
    JWT.encode({ user_id: self.id }, ENV['RAILS_SECRET'])
    end
    
    def self.decode_token(token)
    payload = JWT.decode(token, ENV['RAILS_SECRET'])[0]
    self.find(payload["user_id"])
    end

    def self.user_sort_by_high_streak
        self.all.sort_by{|user| user.highest_streak}
    end
end
