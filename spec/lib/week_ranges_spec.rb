require 'spec_helper'
require 'week_ranges'

describe WeekRanges do

  context 'with an array of days' do
    it 'does initialize' do
      expect { WeekRanges::Days.new }.to_not raise_error
    end
  end

end

