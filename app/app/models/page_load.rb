class PageLoad < ActiveRecord::Base
  after_initialize :set_default_value

  def set_default_value
    self.datetime_stamp ||= Time.zone.now
  end
end
