# This is my configuration for [nvim](https://neovim.io/)

## Requirements
- lua (for windows: choco install lua)
- [neovim](https://neovim.io/) (for windows: choco install neovim --pre)
- git
- ripgrep (for windows: choco install ripgrep)
- choco install mingw (windows) or choco install llvm (windows)
    - Start Neovim in a refreshed environment: refreshenv
    - Install parsers in Neovim via :TSInstall c, :TSInstall cpp

## Configuration based on lua and has simple schema

```shcema
├── init.lua
└── lua
    ├── keymaps.lua
    ├── options.lua
    └── plugins
        ├── init.lua
```

Where `init.lua` is the main file for the configuration.
`lua` directory contains all the files that are used to configure the plugin.
