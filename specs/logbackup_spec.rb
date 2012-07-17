require "rspec"
require_relative '../logbackup'

describe "#backupAll" do
  it "should bring all my logs" do
    files = LogBackup.new({
        :COE   => '192.168.137.111',
        :Lerma => '192.168.137.110'
    }).backupAll
    files.size.should be 2
  end
end