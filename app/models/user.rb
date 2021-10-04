class User < ApplicationRecord
    before_save {self.email = email.downcase}
    validates :name, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
    validates :user_type, presence: true

    has_many :bugs
    has_many :features
end