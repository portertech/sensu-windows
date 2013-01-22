require "omnibus"

module Omnibus
  class Project
    private

    def msi_command
      msi_command = ["light.exe",
                     "-nologo",
                     "-ext WixUIExtension",
                     "-cultures:en-us",
                     "-loc C:\\opt\\sensu\\msi-tmp\\Sensu-en-us.wxl",
                     "C:\\opt\\sensu\\msi-tmp\\Sensu-Files.wixobj",
                     "C:\\opt\\sensu\\msi-tmp\\Sensu.wixobj",
                     "-out C:\\opt\\sensu-#{build_version}-#{iteration}.msi"]
      [msi_command.join(" "), {:returns => [0, 204]}]
    end
  end
end

Omnibus.projects('config/projects/*.rb')
Omnibus.software({}, 'config/software/*.rb')
