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

Create a new Tzolkin::Days object

		$ @days = Tzolkin::Days.new
		
Select the days that you want to know his shortcut range. The day start with **:day1 => 'Sunday'** and end with **:day7 => Saturday**

		$ selected_days = []
		$ selected_days << @days.days[:day2]
		$ selected_days << @days.days[:day3]

Then you can use 'shortcuts_for' and 'small_shortcuts_for' with the selected days
		
		$ @days.shortcuts_for selected_days
		$ => Monday and Tuesday
		$ @days.small_shortcuts_for selected_days
		$ => Mon & Tue

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
