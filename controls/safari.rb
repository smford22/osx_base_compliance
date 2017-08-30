title 'Safari Settings'

control 'safari-1.0' do
  impact 1.0
  title 'Disable the automatic run of safe files in Safari'
  desc 'Files should never be automatically run by Safari'

  describe command('defaults read com.apple.Safari AutoOpenSafeDownloads') do
    its('stdout') { should match(/0/) }
  end
end
