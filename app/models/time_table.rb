class TimeTable < ApplicationRecord
    belongs_to :user
    has_one :task
end