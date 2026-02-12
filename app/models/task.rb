class Task < ApplicationRecord
    belongs_to :user  
    has_one :timetable
end
