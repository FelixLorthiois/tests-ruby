# frozen_string_literal: true

def time_string(t)
  Time.at(t).utc.strftime("%H:%M:%S")
end
