project "yaml-cpp"
    kind "StaticLib"
    language "C++"

    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "src/**.h",
        "src/**.cpp",
        "include/**.h",
  }

  includedirs
  {
        "include",
  }
  defines
  {
<<<<<<< HEAD
      "YAML_CPP_STATIC_DEFINE"
=======
	"YAML_CPP_STATIC_DEFINE"
>>>>>>> 334a366849590f84ce65c69bec9bec0d36240c4f
  }


	filter "system:windows"
        systemversion "latest"
        cppdialect "C++20"
        staticruntime "On"

    filter "system:linux"
        pic "On"
        systemversion "latest"
        cppdialect "C++20"
        staticruntime "On"

    filter "configurations:Debug"
        runtime "Debug"
        optimize "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"            
