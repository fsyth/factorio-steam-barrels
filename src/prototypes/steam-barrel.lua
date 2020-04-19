------------------
-- STEAM BARREL --
------------------

local iconSize = data.raw.item["empty-barrel"].icon_size -- 32px in v0.17, 64px in v0.18

local steamBarrel165 = {
  icon_mipmaps = 4,
  icon_size = 64,
  icons = {
    {
      icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
      icon_mipmaps = 4,
      icon_size = iconSize -- 32px in v0.17, 64px in v0.18
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-side-mask.png",
      icon_mipmaps = 4,
      icon_size = iconSize, -- 32px in v0.17, 64px in v0.18
      tint = {
        a = 0.75,
        b = 0.6,
        g = 0.34,
        r = 0.7 -- was 0.0 for water barrels
      }
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-hoop-top-mask.png",
      icon_mipmaps = 4,
      icon_size = iconSize, -- 32px in v0.17, 64px in v0.18
      tint = {
        a = 0.75,
        b = 0.7,
        g = 0.7,
        r = 0.7 -- was 0.0 for water barrels
      }
    }
  },
  localised_name = {
    "item-name.filled-barrel",
    {
      "fluid-name.steam"
    }
  },
  name = "steam-barrel",
  order = "b[steam-barrel-165]",
  stack_size = 10,
  subgroup = "fill-barrel",
  type = "item"
}

-- FILL STEAM BARREL RECIPE --

local fillSteamRecipe165 = {
  allow_decomposition = false,
  category = "crafting-with-fluid",
  enabled = false, -- can set to true to ignore tech unlocks
  energy_required = 0.2,
  icon_mipmaps = 4,
  icon_size = 64,
  icons = {
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-fill.png",
      icon_mipmaps = 4,
      icon_size = iconSize -- 32px in v0.17, 64px in v0.18
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-fill-side-mask.png",
      icon_mipmaps = 4,
      icon_size = iconSize, -- 32px in v0.17, 64px in v0.18
      tint = {
        a = 0.75,
        b = 0.6,
        g = 0.34,
        r = 0.7 -- was 0.0 for water barrels
      }
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-fill-top-mask.png",
      icon_mipmaps = 4,
      icon_size = iconSize, -- 32px in v0.17, 64px in v0.18
      tint = {
        a = 0.75,
        b = 0.7,
        g = 0.7,
        r = 0.7
      }
    },
    {
      icon = "__base__/graphics/icons/fluid/steam.png",
      icon_mipmaps = 4,
      icon_size = iconSize,  -- 32px in v0.17, 64px in v0.18
      scale = 16 / iconSize, -- 0.5  in v0.17, 0.25 in v0.18
      shift = {
        4,
        -8
      }
    }
  },
  ingredients = {
    {
      amount = 50,
      catalyst_amount = 50,
      name = "steam",
      type = "fluid",
      minimum_temperature = 165.0
    },
    {
      amount = 1,
      catalyst_amount = 1,
      name = "empty-barrel",
      type = "item"
    }
  },
  localised_name = {
    "recipe-name.fill-barrel",
    {
      "fluid-name.steam"
    }
  },
  name = "fill-steam-barrel",
  order = "b[fill-steam-barrel-165]",
  results = {
    {
      amount = 1,
      catalyst_amount = 1,
      name = "steam-barrel",
      type = "item"
    }
  },
  subgroup = "fill-barrel",
  type = "recipe"
}

-- EMPTY STEAM BARREL RECIPE --

local emptySteamRecipe165 = {
  allow_decomposition = false,
  category = "crafting-with-fluid",
  enabled = false, -- can set to true to ignore tech unlocks
  energy_required = 0.2,
  icon_mipmaps = 4,
  icon_size = 64,
  icons = {
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png",
      icon_mipmaps = 4,
      icon_size = iconSize -- 32px in v0.17, 64px in v0.18
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-empty-side-mask.png",
      icon_mipmaps = 4,
      icon_size = iconSize, -- 32px in v0.17, 64px in v0.18
      tint = {
        a = 0.75,
        b = 0.6,
        g = 0.34,
        r = 0.7 -- was 0.0 for water barrels
      }
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-empty-top-mask.png",
      icon_mipmaps = 4,
      icon_size = iconSize, -- 32px in v0.17, 64px in v0.18
      tint = {
        a = 0.75,
        b = 0.7,
        g = 0.7,
        r = 0.7
      }
    },
    {
      icon = "__base__/graphics/icons/fluid/steam.png",
      icon_mipmaps = 4,
      icon_size = iconSize,  -- 32px in v0.17, 64px in v0.18
      scale = 16 / iconSize, -- 0.5  in v0.17, 0.25 in v0.18
      shift = {
        7,
        8
      }
    }
  },
  ingredients = {
    {
      amount = 1,
      catalyst_amount = 1,
      name = "steam-barrel",
      type = "item"
    }
  },
  localised_name = {
    "recipe-name.empty-filled-barrel",
    {
      "fluid-name.steam"
    }
  },
  name = "empty-steam-barrel",
  order = "c[empty-steam-barrel-165]",
  results = {
    {
      amount = 50,
      catalyst_amount = 50,
      name = "steam",
      type = "fluid",
      temperature = 165
    },
    {
      amount = 1,
      catalyst_amount = 1,
      name = "empty-barrel",
      type = "item"
    }
  },
  subgroup = "empty-barrel",
  type = "recipe"
}

-- TECHNOLOGY --

table.insert(data.raw.technology["fluid-handling"].effects, {type = "unlock-recipe", recipe = "fill-steam-barrel"})
table.insert(data.raw.technology["fluid-handling"].effects, {type = "unlock-recipe", recipe = "empty-steam-barrel"})

-- EXTEND --

data:extend{
  steamBarrel165,
  fillSteamRecipe165,
  emptySteamRecipe165
}

---------------------------------
-- SUPERHEATED NUCLEAR VARIANT --
---------------------------------

local steamBarrel500 = table.deepcopy(steamBarrel165)
steamBarrel500.name = "super-steam-barrel"
steamBarrel500.order = "b[steam-barrel-500]"
steamBarrel500.localised_name[2][1] = "fluid-name.super-steam"
steamBarrel500.icons[2].tint.r = 1.0
steamBarrel500.icons[3].tint.r = 1.0

local fillSteamRecipe500 = table.deepcopy(fillSteamRecipe165)
fillSteamRecipe500.name = "fill-super-steam-barrel"
fillSteamRecipe500.order = "b[fill-steam-barrel-500]"
fillSteamRecipe500.localised_name[2][1] = "fluid-name.super-steam"
fillSteamRecipe500.icons[2].tint.r = 1.0
fillSteamRecipe500.ingredients[1].minimum_temperature = 500.0
fillSteamRecipe500.results[1].name = "super-steam-barrel"

local emptySteamRecipe500 = table.deepcopy(emptySteamRecipe165)
emptySteamRecipe500.name = "empty-super-steam-barrel"
emptySteamRecipe500.order = "c[empty-steam-barrel-500]"
emptySteamRecipe500.localised_name[2][1] = "fluid-name.super-steam"
emptySteamRecipe500.icons[2].tint.r = 1.0
emptySteamRecipe500.ingredients[1].name = "super-steam-barrel"
emptySteamRecipe500.results[1].temperature = 500.0

-- TECHNOLOGY --

table.insert(data.raw.technology["nuclear-power"].effects, {type = "unlock-recipe", recipe = "fill-super-steam-barrel"})
table.insert(data.raw.technology["nuclear-power"].effects, {type = "unlock-recipe", recipe = "empty-super-steam-barrel"})

-- EXTEND --

data:extend{
  steamBarrel500,
  fillSteamRecipe500,
  emptySteamRecipe500
}

---------------------------------
-- UNINSULATED AMBIENT VARIANT --
---------------------------------

local steamBarrel015 = table.deepcopy(steamBarrel165)
steamBarrel015.name = "ambient-steam-barrel"
steamBarrel015.order = "b[steam-barrel-015]"
steamBarrel015.localised_name[2][1] = "fluid-name.ambient-steam"
steamBarrel015.icons[2].tint.r = 0.3

local fillSteamRecipe015 = table.deepcopy(fillSteamRecipe165)
fillSteamRecipe015.name = "fill-ambient-steam-barrel"
fillSteamRecipe015.order = "b[fill-steam-barrel-015]"
fillSteamRecipe015.localised_name[2][1] = "fluid-name.ambient-steam"
fillSteamRecipe015.icons[2].tint.r = 0.3
fillSteamRecipe015.ingredients[1].minimum_temperature = nil
fillSteamRecipe015.results[1].name = "ambient-steam-barrel"

local emptySteamRecipe015 = table.deepcopy(emptySteamRecipe165)
emptySteamRecipe015.name = "empty-ambient-steam-barrel"
emptySteamRecipe015.order = "c[empty-steam-barrel-015]"
emptySteamRecipe015.localised_name[2][1] = "fluid-name.ambient-steam"
emptySteamRecipe015.icons[2].tint.r = 0.3
emptySteamRecipe015.ingredients[1].name = "ambient-steam-barrel"
emptySteamRecipe015.results[1].temperature = 15.0

-- TECHNOLOGY --

if (settings.startup["enable-ambient-steam-barrel"].value) then
  table.insert(data.raw.technology["fluid-handling"].effects, {type = "unlock-recipe", recipe = "fill-ambient-steam-barrel"})
  table.insert(data.raw.technology["fluid-handling"].effects, {type = "unlock-recipe", recipe = "empty-ambient-steam-barrel"})
end

-- EXTEND --

data:extend{
  steamBarrel015,
  fillSteamRecipe015,
  emptySteamRecipe015
}
