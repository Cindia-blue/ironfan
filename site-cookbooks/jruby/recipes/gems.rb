#
# Cookbook Name:: jruby
# Recipe:: gems
#
# Copyright 2011, Infochimps, Inc.
#
#
# Install basic gems
#
%w[json configliere erubis extlib].each do |rubygem|
  bash "install jruby version of #{rubygem}" do
    user "root"
    code <<-EOH
      jruby -S gem install --no-ri --no-rdoc #{rubygem}
    EOH
  end
end