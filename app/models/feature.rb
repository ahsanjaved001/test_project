class Feature < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :deadline, presence: true
    validates :status, presence: true

    belongs_to :project
    belongs_to :user
end