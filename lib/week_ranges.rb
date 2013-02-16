require "rubygems"
require "active_support/core_ext"
require 'date'

module WeekRanges

  # Setup the application
  def self.setup
    yield
  end

  # Define day names for a specific languega
  #
  # Deafult: [ Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday ]
  #
  # if you want to define your own days you should pass an array with
  # your days
  mattr_accessor :days
  @days = Date::DAYNAMES

end

