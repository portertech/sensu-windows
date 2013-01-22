name "ruby-windows"

version "1.9.3-p374"

relative_path "ruby-#{version}-i386-mingw32"

source :url => "http://rubyforge.org/frs/download.php/76528/ruby-#{version}-i386-mingw32.7z",
       :md5 => "386ca038d4766972e08de05e50e1cda0"

build do
  command "robocopy . #{install_dir}\\embedded\\ /MIR", :returns => [0, 1]
end
