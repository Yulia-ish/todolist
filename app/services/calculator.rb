module Calculator 
    DAY_START = 7 * 60
    DAY_END = 23 * 60
    WEEKDAYS = (1..7)
    def self.process(user)
        tasks = Task
                     .where(user_id: user.id, state: 'pending')
                     .order(priority: :desc)
                     .map{|t| {task: t, remaining: t.cost}}
        WEEKDAYS.each do |weekday|
            timetable = TimeTable
                         .where(weekday: weekday)
                         .order(:start_hour, :start_minute)
                         .to_a
            busy_intervals = timetable.map do |tt|
                [
                    tt.start_hour * 60 + tt.start_minute,
                    tt.end_hour * 60 + tt.end_minute
                ]
        end
        current_time = DAY_START
        
        busy_intervals.each do |interval|
            fill_interval(user, weekday, current_time, interval[0], tasks)
            current_time = [current_time, interval[1]].max
        end

        fill_interval(user, weekday, current_time, DAY_END, tasks)
        end
    end

    def self.fill_interval(user, weekday, start_min, end_min, tasks)
        while start_min < end_min && tasks.any?
      entry = tasks.first
      task  = entry[:task]

      available = end_min - start_min
      work_time = [available, entry[:remaining]].min
      finish    = start_min + work_time

      TimeTable.create!(
        title: task.title,
        weekday: weekday,
        start_hour: start_min / 60,
        start_minute: start_min % 60,
        end_hour: finish / 60,
        end_minute: finish % 60
      )

      entry[:remaining] -= work_time
      start_min = finish

      if entry[:remaining] == 0
        task.update!(state: 'scheduled')
        tasks.shift
      end
    end
  end
end    
       