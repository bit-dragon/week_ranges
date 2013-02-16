require 'spec_helper'
require 'week_ranges/days'

describe WeekRanges do

  context 'with an array of days' do
    it 'does initialize' do
      expect { WeekRanges::Days.new }.to_not raise_error
    end

    before(:each) { @days = WeekRanges::Days.new }

    context 'selected two days' do
      before(:each) do
        @selected_days = []
        @selected_days << @days.days[:day2]
        @selected_days << @days.days[:day3]
      end
    end

      #describe '#shortcut_for' do
        #it 'Monday and Tuesday selected' do
          #@days.shortcuts_for(@selected_days).should eq('Monday and Tuesday')
        #end
      #end

      #describe '#smal_shortcut_for' do
        #it 'Monday and Tuesday selected' do
          #@days.small_shortcuts_for(@selected_days).should eq('Mon & Tue')
        #end
      #end
    #end

    #context 'selected more than two days and continious' do
      #before(:each) do
        #@selected_days = []
        #@selected_days << @days.days[:day2]
        #@selected_days << @days.days[:day3]
        #@selected_days << @days.days[:day4]
      #end
      #describe '#shortcut_for' do
        #it 'Monday, Tuesday and Wednesday selected' do
          #@days.shortcuts_for(@selected_days).should eq('Monday to Wednesday')
        #end
      #end

      #describe '#small_shortcut_for' do
        #it 'Monday, Tuesday and Wednesday selected' do
          #@days.small_shortcuts_for(@selected_days).should eq('Mon - Wed')
        #end
      #end
    #end

    #context 'selected more than two but no continious' do
      #before(:each) do
        #@selected_days = []
        #@selected_days << @days.days[:day2]
        #@selected_days << @days.days[:day4]
        #@selected_days << @days.days[:day6]
      #end

      #describe '#shortcut_for' do
        #it 'Monday, Wednesday and Friday selected' do
          #@days.shortcuts_for(@selected_days).should eq('Monday, Wednesday, Friday')
        #end
      #end

      #describe '#small_shortcut_for' do
        #it 'Monday, Wednesday and Friday selected' do
          #@days.small_shortcuts_for(@selected_days).should eq('Mon, Wed, Fri')
        #end
      #end
    #end
  #end

  #context 'with a Hash of days' do
    #it 'does initialize' do
      #expect { WeekRanges::Days.new }.to_not raise_error
    #end


    #before(:each) { @days = WeekRanges::Days.new }

    #context 'selected two days' do
      #before(:each) do
        #@selected_days = []
        #@selected_days << @days.days[:day2]
        #@selected_days << @days.days[:day3]
      #end

      #describe '#shortcut_for' do
        #it 'Monday and Tuesday selected' do
          #@days.shortcuts_for(@selected_days).should eq('Monday and Tuesday')
        #end
      #end

      #describe '#smal_shortcut_for' do
        #it 'Monday and Tuesday selected' do
          #@days.small_shortcuts_for(@selected_days).should eq('Mon & Tue')
        #end
      #end
    #end

    #context 'selected more than two days and continious' do
      #before(:each) do
        #@selected_days = []
        #@selected_days << @days.days[:day2]
        #@selected_days << @days.days[:day3]
        #@selected_days << @days.days[:day4]
      #end
      #describe '#shortcut_for' do
        #it 'Monday, Tuesday and Wednesday selected' do
          #@days.shortcuts_for(@selected_days).should eq('Monday to Wednesday')
        #end
      #end

      #describe '#small_shortcut_for' do
        #it 'Monday, Tuesday and Wednesday selected' do
          #@days.small_shortcuts_for(@selected_days).should eq('Mon - Wed')
        #end
      #end
    #end

    #context 'selected more than two but no continious' do
      #before(:each) do
        #@selected_days = []
        #@selected_days << @days.days[:day2]
        #@selected_days << @days.days[:day4]
        #@selected_days << @days.days[:day6]
      #end

      #describe '#shortcut_for' do
        #it 'Monday, Wednesday and Friday selected' do
          #@days.shortcuts_for(@selected_days).should eq('Monday, Wednesday, Friday')
        #end
      #end

      #describe '#small_shortcut_for' do
        #it 'Monday, Wednesday and Friday selected' do
          #@days.small_shortcuts_for(@selected_days).should eq('Mon, Wed, Fri')
        #end
      #end
    #end
  end

end

