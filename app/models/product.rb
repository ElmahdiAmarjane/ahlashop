class Product < ApplicationRecord
  belongs_to :user
  def sourcing_period
    seconds = p_delevery_date - p_sourcing_date

    years = seconds / (365 * 24 * 3600)
    days = (seconds % (365 * 24 * 3600)) / (24 * 3600)
    hours = (seconds % (24 * 3600)) / 3600
    minutes = (seconds % 3600) / 60
    seconds = seconds % 60

    time_parts = []
    time_parts << "#{years} an#{'s' if years > 1}" if years > 0
    time_parts << "#{days}j" if days > 0
    time_parts << "#{hours}h" if hours > 0
    time_parts << "#{minutes}m" if minutes > 0
    time_parts << "#{seconds}s" if seconds > 0

    time_parts.join(" ")
  end
end
