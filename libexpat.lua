project "expat"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "3E35895F-37A0-46DB-88EA-A61EAFA7B2E0"

-- RTC defines are in the expat/lib/expat_config.h generated file

includedirs {
  "expat/lib",
}

files {
  "expat/lib/xmlparse.c",
  "expat/lib/xmlrole.c",
  "expat/lib/xmltok.c",
}

if (_PLATFORM_ANDROID) then
  files {
    "expat/lib/random_getrandom.c",
    "expat/lib/random_dev_urandom.c",
  }
end

if (_PLATFORM_COCOA) then
end

if (_PLATFORM_IOS) then
  files {
    "expat/lib/random_arc4random_buf.c",    
  }
end

if (_PLATFORM_LINUX) then
  files {
    "expat/lib/random_getrandom.c",
    "expat/lib/random_dev_urandom.c",
  }
end

if (_PLATFORM_MACOS) then
  files {
    "expat/lib/random_arc4random_buf.c",    
  }
end

if (_PLATFORM_WINDOWS) then
  files {
    "expat/lib/random_rand_s.c",
  }
end

if (_PLATFORM_WINUWP) then
  files {
    "expat/lib/random_rand_s.c",
  }
end
