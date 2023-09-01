project "glfw"
kind "StaticLib"
language "C"
cdialect "C17"

targetdir "bin/%{prj.name}"
objdir "obj/%{prj.name}"

files { "src/*.c" } -- TODO use only necessary files

targetname "glfw3"

filter "system:windows"
    defines { "_GLFW_WIN32", "_CRT_SECURE_NO_WARNINGS" }