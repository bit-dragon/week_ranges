require "tzolkin/version"
require 'date'

module Tzolkin
	class Days
		attr_reader :days

		def initialize
			@days = {}
      tmp_days = Date::DAYNAMES
			tmp_days.each_index { |index| @days["day#{index + 1}".to_sym] = tmp_days[index] }
		end

		def shortcuts_for(days)
			if two? days
				string_with_and_for days
			elsif more_thant_two_and_continious? days
				string_with_range days
			else
				string_with_each_days_for(days)
			end
		end

		def small_shortcuts_for(days)
			if two? days
				abbr_string_with_and_for days
			elsif more_thant_two_and_continious? days
				abbr_string_with_range days
			else
				abbr_string_with_each_days_for(days)
			end
		end

		private
		def continuous?(days)
			range = first_and_end_keys_of days
			(((range.last + 1) - range.first) == days.size)
		end

		def two?(days)
			days.size == 2
		end

		def more_thant_two_and_continious?(days)
			days.size > 2 and continuous?(days)
		end

		def string_with_and_for(days)
			"#{days.first} and #{days.last}"
		end

		def string_with_each_days_for(days)
			days.join(', ')
		end

		def string_with_range(days)
			range = first_and_end_keys_of days
			"#{@days["day#{range.first}".to_sym]} to #{@days["day#{range.last}".to_sym]}"
		end

		def abbr_string_with_and_for(days)
			"#{days.first[0..2].capitalize} & #{days.last[0..2].capitalize}"
		end

		def abbr_string_with_each_days_for(days)
			word = ""
			days.collect { |day| (word += "#{day[0..2].capitalize}, " unless (days.last == day)) }
			word << "#{days.last[0..2].capitalize}"
		end

		def abbr_string_with_range(days)
			range = first_and_end_keys_of days
			"#{@days["day#{range.first}".to_sym][0..2].capitalize} - #{@days["day#{range.last}".to_sym][0..2].capitalize}"
		end

		def first_and_end_keys_of(days)
			range = []
			range << to_index(@days.key(days.first))
			range << to_index(@days.key(days.last))
		end

		def to_index day
			day.to_s.match(/\d/).to_s.to_i
		end

	end
end

