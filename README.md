# Tzolkin

Gem to generate small description of range of weekdays like Monday to Friday, Monday and Tuesday or Monday, Thurday, Sunday

## Installation

Add this line to your application's Gemfile:

    gem 'tzolkin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tzolkin

## Usage

Initialize with an array of 7 days

		$ @days = Tzolkin::Days.new(day1: 'Monday', day2: 'Tuesday', day3: 'Wednesday', day4: 'Thursday', day5: 'Friday', day6: 'Saturday', day7: 'Sunday')

Select the days that you want to know his range

		$ selected_days = []
		$ selected_days << @days.days[:day1]
		$ selected_days << @days.days[:day2]

Then you can use 'shortcuts_for' and 'small_shortcuts_for' with the selected days
		
		$ @days.shortcuts_for selected_days
		$ => Monday and Tuesday
		$ @days.small_shortcuts_for selected_days
		$ => M & T

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
