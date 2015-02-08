class ActiveEventValidator < ActiveModel::Validator
  def validate(record)
    if record.time.present? && record.time <= Time.now
      record.errors.add(:time, "can't be in the past")
    end
  end
end

class Event < ActiveRecord::Base
  validates_with ActiveEventValidator
end
