# DingDong's Funkin' | VS DingDongDirt Source Code

**(THIS README IS FOR DING MOD 1.0-1.1 AND WILL BE UPDATED ONCE 2.0 IS OUT!)**

This is the source code for the mod mentioned above.
It's pretty messy and shit but I don't care LOL!

(If you don't care about other shit and want to build this, just scroll down or click [here](https://github.com/ACrazyTown/DingDongFunkin#building)
# Credits

[**A Crazy Town (me)**](https://twitter.com/ACrazyTown) - Programming, Art & Music

[**Dorbellprod**](https://twitter.com/Dorbellprod) - Creation of **DingDongDirt** himself and swaggy game over lines

[**DespawnedDiamond**](https://twitter.com/DespawnedD) - Charting improvements

**Intro/Title Screen Music is "Delightful D" by Kevin MacLeod (incompetech.com)**

**Licensed under Creative Commons: By Attribution 3.0
http://creativecommons.org/licenses/by/3.0/**

## Special Thanks

[**KadeDeveloper**](https://twitter.com/KadeDeveloper) - For Kade Engine

[**GWebDev**](https://twitter.com/GWebDevFNF) - Video Code

# Building
**NOTE: HTML5 is NOT supported as of 1.1, if you attempt to build for HTML5 you will probably get errors because of missing files!**

To build this hell of a Mod, first follow the **[Kade Engine Build Instructions](https://github.com/KadeDev/Kade-Engine/blob/stable/docs/building.md)** and install all the dependencies for Haxe and for your platform **[Windows/macOS/Linux]**.

To get video cutscenes to work, execute these commands in a command prompt/terminal:
```
haxelib install actuate
haxelib git extension-webm https://github.com/KadeDev/extension-webm
lime rebuild extension-webm windows
```

And after all that, you should be able to build the game by running `lime test [windows/macos/linux]`.
