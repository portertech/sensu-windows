name "ruby-windows-devkit"

version "4.5.2-20111229-1559"

source :url => "http://cloud.github.com/downloads/oneclick/rubyinstaller/DevKit-tdm-32-#{version}-sfx.exe",
       :md5 => "4bf8f2dd1d582c8733a67027583e19a6"

dependencies ["ruby-windows"]

build do
  command "DevKit-tdm-32-#{version}-sfx.exe -y -o#{install_dir}\\embedded"
  command "echo - #{install_dir}\\embedded > config.yml", :cwd => "#{install_dir}\\embedded"
  ruby "dk.rb install", :cwd => "#{install_dir}\\embedded"
end
