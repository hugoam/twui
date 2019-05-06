-- twui library

solution "twui"
    configurations {
        "Debug",
        "Release",
    }

    platforms {
        "x32",
        "x64"
    }

    language "C++"


PROJECT_DIR = path.getabsolute("..")
BUILD_DIR = path.join(path.getabsolute(".."), "build")

dofile "toolchain.lua"

NO_REFL = true

dofile(path.join(TWO_DIR, "scripts/two.lua"))

local all = { two.infra, two.jobs, two.type, two.tree, two.pool, two.math,
              two.ctx, two.ctxbackend, two.bgfx, two.ui, two.uibackend };
              
libs(all, "StaticLib");

--dofile(path.join(TWO_DIR, "scripts/two_example.lua"))

function add_example_data(name)
    configuration { "asmjs" }
        linkoptions {
            "--preload-file ../../../data/examples/" .. name .. "@data/",
        }
    
    configuration {}
end

function two_example(name, deps, exdeps, ismodule)

    local uses_example = function()
        add_example_data(name)
    end

    _G[name] = module(nil, "_" .. name, path.join(TWO_DIR, "example"), name, nil, uses_example, false, deps, not ismodule)
    
    two_binary(name, table.union({ _G[name] }, exdeps), deps)
end

group "bin"

two_example("00_ui",    all, {})
two_example("00_imgui", all, {})
