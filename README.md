# Rayverse
Work-in-progress modern port of Rayman 1 for PC (version 1.21), based on the disassembly of the original.

The aim is to provide a drop-in replacement for the original executable RAYMAN.EXE that works on modern platforms (including Windows, Linux and macOS).

## New features
This branch aims to add new features and improves to the game.

- GAME_NAME macro: The GAME_NAME macro allows you to set the game's name in one central place. This name will be displayed different locations, like the title bar and the Task Manager
- macOS Application Bundle: Adds a Shell Script that copies the new executable into a .app bundle, this also moves the location of the game save data to a game folder in ~/Library/Application Support
- Icon for Windows executable: Adds build options to include an app icon to the executable
- Run on world map: After you beat Mr Stone you can run on the world map
- Adds the ability to change direction while walking between levels on the world map

## Build instructions

### Windows
For modern Windows platforms, you can build Rayverse using CMake in combination with your preferred toolchain, either MinGW-w64 or MSVC (e.g. using Visual Studio).

To build with Windows 9x compatibility, you can use Visual C++ 6.0 with the project file `rayverse.dsp`.

### Linux / macOS
The following dependencies are required to be installed: SDL2 (on Linux and macOS), GLEW (Linux only).
```
mkdir build && cd build
cmake .. && cd ..
cmake --build build
./rayverse
```

## Special thanks

Main collaborators on this project:
* **[RayCarrot](https://github.com/RayCarrot)**: many insights on the inner workings of the game; author of the [BinarySerializer](https://github.com/BinarySerializer/BinarySerializer.Ray1),
  [Rayman Control Panel](https://github.com/RayCarrot/RayCarrot.RCP.Metro), [Ray1Map](https://github.com/BinarySerializer/Ray1Map) 
  and [Ray1Editor](https://github.com/RayCarrot/RayCarrot.Ray1Editor) projects, among others.
* **[fuerchter](https://github.com/fuerchter)**: author of the matching decompilation of Rayman for PS1 project, see [rayman-ps1-decomp](https://github.com/fuerchter/rayman-ps1-decomp)
