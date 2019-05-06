-- tgfx toolchain

TGFX_DIR = path.getabsolute("..")
TWO_DIR  = path.join(TGFX_DIR, "two")

dofile(path.join(TWO_DIR, "scripts/toolchain.lua"))
