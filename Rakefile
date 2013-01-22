require "omnibus"

module Omnibus
  class Project
    private

    def msi_command
      msi_command = ["light.exe",
                     "-nologo",
                     "-ext WixUIExtension",
                     "-cultures:en-us",
                     "-loc #{install_path}\\msi-tmp\\Sensu-en-us.wxl",
                     "#{install_path}\\msi-tmp\\Sensu-Files.wixobj",
                     "#{install_path}\\msi-tmp\\Sensu.wixobj",
                     "-out #{config.package_dir}\\sensu-#{build_version}-#{iteration}.msi"]
      [msi_command.join(" "), {:returns => [0, 204]}]
    end
  end
end

Omnibus.projects('config/projects/*.rb')
Omnibus.software({}, 'config/software/*.rb')
