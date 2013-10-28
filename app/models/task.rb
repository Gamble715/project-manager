class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :employee

  scope :complete, ->{ where(complete: true) }
  scope :incomplete, ->{ where(complete: false) }
end
