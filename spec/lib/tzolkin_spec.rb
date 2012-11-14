require 'spec_helper'
require 'tzolkin'

describe Tzolkin do

	it 'does initialize' do
		expect { @days = Tzolkin::Days.new(day1: 'Monday', day2: 'Tuesday', day3: 'Wednesday', day4: 'Thursday', day5: 'Friday', day6: 'Saturday', day7: 'Sunday') }.to_not raise_error
	end

	it 'does not initialize' do
		expect { @days = Tzolkin::Days.new(day1: 'Monday', day2: 'Tuesday', day3: 'Wednesday', day4: 'Thursday', day5: 'Friday', day6: 'Saturday') }.to raise_error
	end

	before(:each) { @days = Tzolkin::Days.new(day1: 'Monday', day2: 'Tuesday', day3: 'Wednesday', day4: 'Thursday', day5: 'Friday', day6: 'Saturday', day7: 'Sunday') }

	context 'selected two days' do
		before(:each) do
			@selected_days = []
			@selected_days << @days.days[:day1]
			@selected_days << @days.days[:day2]
		end

		describe '#shortcut_for' do
			it 'Monday and Tuesday selected' do
				@days.shortcuts_for(@selected_days).should eq('Monday and Tuesday')
			end
		end

		describe '#smal_shortcut_for' do
			it 'Monday and Tuesday selected' do
				@days.small_shortcuts_for(@selected_days).should eq('M & T')
			end
		end
	end

	context 'selected more than two days and continious' do
		before(:each) do
			@selected_days = []
			@selected_days << @days.days[:day1]
			@selected_days << @days.days[:day2]
			@selected_days << @days.days[:day3]
		end
		describe '#shortcut_for' do
			it 'Monday, Tuesday and Wednesday selected' do
				@days.shortcuts_for(@selected_days).should eq('Monday to Wednesday')
			end
		end

		describe '#small_shortcut_for' do
			it 'Monday, Tuesday and Wednesday selected' do
				@days.small_shortcuts_for(@selected_days).should eq('M - W')
			end
		end
	end

	context 'selected more than two but no continious' do
		before(:each) do
			@selected_days = []
			@selected_days << @days.days[:day1]
			@selected_days << @days.days[:day3]
			@selected_days << @days.days[:day5]
		end

		describe '#shortcut_for' do
			it 'Monday, Wednesday and Friday selected' do
				@days.shortcuts_for(@selected_days).should eq('Monday, Wednesday, Friday')
			end
		end

		describe '#small_shortcut_for' do
			it 'Monday, Wednesday and Friday selected' do
				@days.small_shortcuts_for(@selected_days).should eq('M, W, F')
			end
		end
	end
end
