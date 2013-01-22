name "sensu"
version "0.9.9"

dependencies ["ruby-windows", "ruby-windows-devkit"]

env = { "GEM_HOME" => nil, "GEM_PATH" => nil }

build do
  gem "install sensu --no-rdoc --no-ri -v #{version}", :env => env
end
