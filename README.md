A simple extensible C++ project template based on CMake

1. Directory layout

+-/ src      [The whole codebase]
| |
| +-/ libs
| | |
| | +-/ library_1
| | |  ...
| | +-/ library_N
| |
| +-/ tools
| | |
| | +-/tool_1
| | | ...
| | +-/tool_N
| |
| +-/ tests
|   |
|   +-/test_1
|   | ...
|   +-/test_N
|
+-/ bin        [Tools and tests binaries]
| |
| +-/ tests
|
+-/ libs       [Library binaries]
| |
| +-/ library_1
| | ...
| +-/ library_N
|
+-/ include    [Exported library headers]
| |
| +-/ library_1
| |  ...
| +-/ library_N
|
+-/ build      [Off-source build]
