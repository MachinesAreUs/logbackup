require "rspec"
require_relative '../logbackup'

describe "#backupAll" do
  it "should bring all my logs" do
    files = LogBackup.new({
        :SiteA => '192.168.137.111',
        :SiteB => '192.168.137.110'
    }).backupAll
    files.size.should be 2
  end
end