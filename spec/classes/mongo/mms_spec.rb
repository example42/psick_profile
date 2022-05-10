# frozen_string_literal: true

require 'spec_helper'

describe 'psick_profile::mongo::mms' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:pre_condition) { 'include psick; include psick_profile::mongo' }

      it { is_expected.to compile }
    end
  end
end
