require_relative './logbackup'

lb = LogBackup.new ({
  :SiteA => '192.168.137.111',
  :SiteB => '192.168.137.110'
})
lb.backupAll