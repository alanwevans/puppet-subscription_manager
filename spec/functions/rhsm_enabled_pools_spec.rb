#!/usr/bin/ruby -S rspec
#
#  Test the rhsm_enabled_repos fact
#
#   Copyright 2016 WaveClaw <waveclaw@hotmail.com>
#
#   See LICENSE for licensing.
#

require 'spec_helper'
require 'facter/rhsm_enabled_pools'



describe Facter::Util::Rhsm_enabled_pools, :type => :puppet_function do
  context 'on a supported platform' do
  end

  context 'on an unsupported platform' do
    before :each do
      allow(File).to receive(:exist?).with(
      '/usr/sbin/subscription-manager') { false }
    end
    it "should return nothing" do
      expect(Facter::Util::Rhsm_enabled_pools.rhsm_enabled_pools).to eq([])
    end
  end

  context 'when caching' do
  end
end