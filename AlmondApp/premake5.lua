project "AlmondApp"
        kind "ConsoleApp"
        language "C++"
        cppdialect "C++17"
        targetdir "bin/%{cfg.buildcfg}"
        staticruntime "off"

        files { "src/**.h", "src/**.cpp" }

        includedirs {

                "../vendor/imgui",
                "../Almond/src",
        }

        links {
                "Almond"
        }

        targetdir ("bin/" .. outputdir .. "/%{prj.name}")
        objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

        filter "system:linux"
                systemversion "latest"
                pic "On"

        filter "system:windows"
                systemversion "latest"

        filter "configurations:Debug"
                defines { "WL_DEBUG" }
                symbols "On"

        filter "configurations:Release"
                defines { "WL_RELEASE" }
                optimize "On"
                symbols "On"

        filter "configurations:Dist"
                defines { "WL_DIST" }
                optimize "On"
                symbols "Off"