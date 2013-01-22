name "sensu"
version "0.9.9"

dependencies ["ruby-windows-devkit"]

build do
  gem "install sensu --no-rdoc --no-ri -v #{version}"
end
