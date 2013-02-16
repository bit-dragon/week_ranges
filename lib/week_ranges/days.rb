require "week_ranges/version"
require 'date'

module WeekRanges
	class Days
		attr_reader :ranges

		def initialize
			@days.each_index { |index| @ranges["day#{index + 1}".to_sym] = tmp_days[index] }
		end

    def self.ranges
      @ranges ||= {}
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
			"#{@ranges["day#{range.first}".to_sym]} to #{@ranges["day#{range.last}".to_sym]}"
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
			"#{@ranges["day#{range.first}".to_sym][0..2].capitalize} - #{@ranges["day#{range.last}".to_sym][0..2].capitalize}"
		end

		def first_and_end_keys_of(days)
			range = []
			range << to_index(@ranges.key(days.first))
			range << to_index(@tanges.key(days.last))
		end

		def to_index day
			day.to_s.match(/\d/).to_s.to_i
		end

	end
end

