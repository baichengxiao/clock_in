class Timesheet < ApplicationRecord
  belongs_to :user

  validates_presence_of :week_number,:hour

end
