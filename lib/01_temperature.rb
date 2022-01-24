# frozen_string_literal: true

def ftoc(t_f)
  (t_f - 32) * 5.0 / 9.0
end

def ctof(t_c)
  (t_c * 9.0 / 5.0) + 32
end
