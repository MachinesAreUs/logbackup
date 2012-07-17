require_relative './logbackup'

lb = LogBackup.new ({
  :COE   => '192.168.137.111',
  :Lerma => '192.168.137.110'
})
lb.backupAll