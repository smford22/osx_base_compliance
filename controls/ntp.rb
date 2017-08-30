title 'NTP Configuration'

control 'ntp-1.0' do
  impact 0.7
  title 'NTP Should be enabled'
  desc 'NTP Should be turned on all systems'

  describe command('systemsetup -getusingnetworktime') do
    its('stdout') { should match(/Network Time: On/)}
  end
end

control 'ntp-1.2' do
  impact 1.0
  title 'NTP Should be configure to time.apple.com'
  desc 'All systems should be configured to use time.apple.com as the network time server'

  describe command('systemsetup -getnetworktimeserver') do
    its('stdout') { should match(/Network Time Server: time.apple.com/) }
  end
end