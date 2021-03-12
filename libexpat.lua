project "expat"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "3E35895F-37A0-46DB-88EA-A61EAFA7B2E0"

defines {
  "XML_STATIC",
}

includedirs {
  "expat/lib",
}

files {
  "expat/lib/xmlparse.c",
  "expat/lib/xmlrole.c",
  "expat/lib/xmltok.c",
}

local unix_defines = {
  "BYTEORDER=1234",
  "HAVE_MEMMOVE",
  "XML_CONTEXT_BYTES=1024",
  "XML_DEV_URANDOM",
  "XML_DTD=1",
  "XML_NS=1",
  "XMLCALL=''", -- build without setting __attributes__ which defaults to hidden
  "XMLIMPORT=''", -- build without setting __attributes__ which defaults to hidden
}


if (_PLATFORM_ANDROID) then
  defines {
    unix_defines,
  }
end

if (_PLATFORM_COCOA) then
  defines {
    unix_defines,
  }
end

if (_PLATFORM_IOS) then
  defines {
    unix_defines,
  }
end

if (_PLATFORM_LINUX) then
  defines {
    unix_defines,
  }
end

if (_PLATFORM_MACOS) then
  defines {
    unix_defines,
  }
end

if (_PLATFORM_WINDOWS) then
  defines {
    "_CRT_SECURE_NO_WARNINGS",
  }
end

if (_PLATFORM_WINUWP) then
  defines {
    "_CRT_SECURE_NO_WARNINGS",
  }
end
