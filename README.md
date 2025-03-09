# ImHex Game Patterns Collection

> **Related Project**: For users of 010 Editor (a proprietary hex editor), you can find my [010 Game Binary Templates Collection](https://github.com/ModzabazeR/010-Game-Binary-Templates-Collection) - A collection of game binary templates. This ImHex pattern collection serves as a free and open-source alternative.

This repository contains a collection of ImHex patterns (.hexpat files) for analyzing and editing video game binary files using [ImHex](https://imhex.werwolv.net/), a free and open-source hex editor.

## What are ImHex Patterns?

ImHex patterns (.hexpat files) are scripts written in a C-like language that define the structure of binary files. They allow you to:

- Visualize complex binary data in a structured, human-readable format
- Understand the layout and organization of game files
- Edit binary data with proper context and validation
- Reverse engineer game file formats

These patterns act as a map for interpreting raw binary data, making it possible to understand and modify game assets without specialized tools.

## Included Game Patterns

This repository includes patterns for the following games:

- [NieR Automata](NieRAutomata/README.md)
- [Steins;Gate](SteinsGate/README.md)

## Installation

1. Install [ImHex](https://imhex.werwolv.net/)
2. Clone or download this repository
3. In ImHex, go to **File > Settings > Folders**
4. Add the path to this repository to the "Patterns" folder list
5. Restart ImHex

Alternatively, you can copy the patterns to your ImHex patterns directory:
- Windows: `%APPDATA%\ImHex\patterns`
- macOS: `~/Library/Application Support/ImHex/patterns`
- Linux: `~/.local/share/imhex/patterns`

## Usage

1. Open a binary file in ImHex
2. Go to the "Patterns" panel (usually on the right side)
3. Select the appropriate pattern for your file type
4. The file structure will be displayed in the Pattern Data panel

For example, to analyze a Steins;Gate MPK archive:
1. Open the .mpk file in ImHex
2. Select the MPK.hexpat pattern
3. Browse the structured data in the Pattern Data panel

## Pattern Format

ImHex patterns use a C-like language with structs, enums, and other familiar constructs. They often include:

- Magic number detection with `#pragma magic`
- Struct definitions for file sections
- Helper functions for formatting and data interpretation
- Annotations for better visualization

## Contributing

Contributions are welcome! If you have patterns for additional games or improvements to existing patterns:

1. Fork this repository
2. Add or modify patterns
3. Submit a pull request

When creating new patterns, please:
- Include comments explaining the file format
- Document the purpose of each structure
- Test thoroughly with multiple files
- Include the game name as a prefix in the filename

## Related Projects

- [010 Game Binary Templates Collection](https://github.com/ModzabazeR/010-Game-Binary-Templates-Collection) - A collection of game binary patterns for [010 Editor](https://www.sweetscape.com/010editor/), an proprietary hex editor.

## Resources

- [ImHex Documentation](https://imhex.werwolv.net/docs/)
- [ImHex Pattern Language Documentation](https://imhex.werwolv.net/docs/patterns/)
- [ImHex GitHub Repository](https://github.com/WerWolv/ImHex)

## Acknowledgements

This repository contains a mix of original patterns created by contributors and patterns adapted from the game modding and reverse engineering communities. Thanks to these communities for their research and documentation of various file formats that made some of these patterns possible.