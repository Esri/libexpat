from conans import ConanFile


class ExpatConan(ConanFile):
    name = "expat"
    version = "2.2.9"
    url = "https://github.com/Esri/libexpat"
    license = "https://github.com/Esri/libexpat/blob/master/expat/COPYING"
    description = "Expat is a stream-oriented XML parser."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/libexpat/"

        # headers
        self.copy("expat.h", src=base + "expat/lib", dst=relative + "expat/lib")
        self.copy("expat_external.h", src=base + "expat/lib", dst=relative + "expat/lib")

        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)
