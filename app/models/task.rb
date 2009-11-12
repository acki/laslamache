class Task < ActiveRecord::Base
  has_many :questions
  has_many :offers

  accepts_nested_attributes_for :questions
  accepts_nested_attributes_for :offers
end
