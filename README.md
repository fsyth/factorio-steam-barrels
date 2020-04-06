# Barrels of Steam
###### A Factorio mod - [get it here!](https://mods.factorio.com/mod/barrels-of-steam)

![Mod Thumbnail](src/thumbnail.png "Mod Thumbnail")

This mod adds steam barrels at 165 °C and 500 °C, as well as recipes for barreling and unbarreling.

This all stems from a weird plan a friend and I had in our game to build a nuclear reactor on a remote island that we never set foot on, using only drones to send fuel rods across the sea and carry back superheated steam in barrels. Yes, it's a little silly, but you can put any fluid in a tank but not every fluid in a *barrel*, and we had just kind of expected this feature to already be there, and it wasn't probably due to temperature being relevant.

Anyway, our next game plan is to create a base powered only by barrels of hot steam - no solar, no big pylons, no pipes, no tanks, plus more.

## Recipes

### Steam Barrel

**Empty barrel** + 50× **Steam** (≥ 165 °C) ⇌ **Steam barrel** (165 °C)

Unlocked by **Fluid handling** technology.

![Fill Steam Barrel recipe](images/fill-steam-barrel-recipe.png "Fill Steam Barrel recipe")
![Empty Steam Barrel recipe](images/empty-steam-barrel-recipe.png "Empty Steam Barrel recipe")
![Fluid Handling technology](images/fluid-handling-technology.png "Fluid Handling technology")

### Superheated Steam Barrel

**Empty barrel** + 50× **Steam** (≥ 500 °C) ⇌ **Superheated steam barrel** (500 °C)

Unlocked by **Nuclear power** technology.

![Fill Superheated Steam Barrel recipe](images/fill-superheated-steam-barrel-recipe.png "Fill Superheated Steam Barrel recipe")
![Empty Superheated Steam Barrel recipe](images/empty-superheated-steam-barrel-recipe.png "Empty Superheated Steam Barrel recipe")
![Nuclear Power technology](images/nuclear-power-technology.png "Nuclear Power technology")

## Installation

It's simplest to just use the in-game mod loader to search for "Barrels of Steam" to get the latest published release.

But you can install a development version by copying `barrels-of-steam_x.x.x.zip` to [Factorio's mods folder](https://wiki.factorio.com/index.php?title=Application_directory):
- Windows `%appdata%\Factorio\mods`
- Mac `~/Library/Application Support/factorio/mods`
- Linux `~/.factorio/mods`

Running the build script `build.ps1` in PowerShell zips up `src` and does this automatically (Windows only, 7-zip is required on your path).

Otherwise, copy a zip from `build/<factorio_version>/barrels-of-steam_x.x.x.zip`, or download from [mods.factorio.com](https://mods.factorio.com/mod/barrels-of-steam), and paste it to Factorio's mods folder:
