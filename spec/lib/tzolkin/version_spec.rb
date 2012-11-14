require 'spec_helper'
require 'tzolkin/version'

describe Tzolkin do
	it '#version_string' do
		Tzolkin::version_string.should eq('Version 0.0.1')
	end
end
