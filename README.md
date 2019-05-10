# [twui](https://github.com/hugoam/tgfx)

twui is a fully auto-layout, stylable, declarative/immediate mode UI, with a large set of widgets, docking, tabs, nodes, text editors, inputs, curves etc.  
it is part of the encompassing [two](https://github.com/hugoam/two) library 

![styles](media/ui0.gif?raw=true)

# building
Here are the basic build instructions to get twui up and running on linux/osx/windows:
- `git clone --recursive https://github.com/hugoam/twui`
- `cd tgfx`
- for linux (make):
  - `bin/linux/genie --gcc=linux-gcc gmake`
  - `cd build/projects/gmake-linux`
  - `make config=debug64 -j8`
- for osx (make): `bin/darwin/genie --gcc=osx gmake`
- for osx (xcode): `bin/darwin/genie --xcode=osx xcode9`
- for windows (visual studio): `bin/windows/genie vs2017`
