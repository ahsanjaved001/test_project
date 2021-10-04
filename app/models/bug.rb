class Bug < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :description, presence: true
    validates :deadline, presence: true
    validates :status, presence: true

    belongs_to :project
    belongs_to :user
end