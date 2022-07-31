# This is my configuration for [nvim](https://neovim.io/)

## Requirements

- [neovim](https://neovim.io/)
- git
- ripgrep
- choco install mingw (windows) or choco install llvm (windows)

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
