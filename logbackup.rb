require 'fileutils'
require 'active_support/all'
require 'logger'

class LogBackup

  def initialize(hosts)
    @hosts = hosts
    @remotePath = '/c$/Knowtion/Medtzin/log'
    @logBaseName = 'Medtzin.log'
    @localRepoPath  = 'c:/Knowtion/Medtzin/log/produccion/'
    setupLog()
  end

  def backupAll
    date = Date.yesterday.strftime("%Y-%m-%d")
    @log.info "Let's do some log bakcups for '#{date}'..."
    results = @hosts.collect do |host, ip|
      backupHost(date, host)
    end
    return results.select {|x| not x.nil? }
  end

  def backupHost(date, host)
    ensureDirExists("#@localRepoPath/#{date}")
    begin
      @log.info "Trying to backup logs for '#{host}'..."
      src = "//#{@hosts[host]}/#@remotePath/#@logBaseName.#{date}"
      dest = "#@localRepoPath/#{date}/#{host}.#@logBaseName.#{date}"
      FileUtils.copy  src, dest
      @log.info "done!"
      return dest
    rescue Exception => e
      @log.error "Error while trying to backup logs for '#{host}': #{e.message}"
      return nil
    end
  end

  def setupLog
    @log = Logger.new('LogBackup.log')
    @log.level = Logger::INFO
  end

  def ensureDirExists(path)
    FileUtils.mkpath path
  end
end

