project "gtest"
	kind "StaticLib"
	language "C++"
    cppdialect "C++14"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "googletest/src/**.cc",
        "googletest/include/**.h",
        "googlemock/src/**.cc",
        "googlemock/include/**.h",
	}

    includedirs
    {
        "googletest",
        "googlemock",
        "googletest/include",
        "googlemock/include",
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
