require 'spec_helper'
require 'week_ranges/version'

describe WeekRanges do
	it '#version_string' do
		WeekRanges::version_string.should eq('Version 0.0.1')
	end
end
