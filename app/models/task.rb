class Task < ActiveRecord::Base
  has_many :questions
  has_many :offers

end
