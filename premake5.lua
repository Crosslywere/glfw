project "glfw"
kind "StaticLib"
language "C"
cdialect "C17"

targetdir "bin/%{prj.name}"
objdir "obj/%{prj.name}"

files {
    "src/context.c",
    "src/egl_context.c",
    "src/init.c",
    "src/input.c",
    "src/monitor.c",
    "src/null_init.c",
    "src/null_joystick.c",
    "src/null_monitor.c",
    "src/null_window.c",
    "src/osmesa_context.c",
    "src/platform.c",
    "src/vulkan.c",
    "src/wgl_context.c",
    "src/window.c"
}

targetname "glfw3"

filter "system:windows"
    defines { "_GLFW_WIN32", "_CRT_SECURE_NO_WARNINGS" }

    files {
        "src/win32_init.c",
        "src/win32_joystick.c",
        "src/win32_module.c",
        "src/win32_monitor.c",
        "src/win32_thread.c",
        "src/win32_time.c",
        "src/win32_window.c"
    }

-- @todo Implement configure none windows files
filter "system:linux"
    defines {
        "_GLFW_X11",
        -- "_GLFW_WAYLAND" -- 
    }

filter "not system:windows"
    files { "src/*.c" }