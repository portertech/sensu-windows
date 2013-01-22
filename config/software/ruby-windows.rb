name "ruby-windows"

version "1.9.3-p374"

relative_path "ruby-#{version}-i386-mingw32"

source :url => "http://rubyforge.org/frs/download.php/76707/ruby-#{version}-i386-mingw32.7z",
       :md5 => "7056392b8c2ae00cc9e7bdc7b82ead55"

build do
  command "robocopy . #{install_dir}\\embedded\\ /MIR", :returns => [0, 1]
end
