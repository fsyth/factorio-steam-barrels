-- STEAM BARREL --

local steamBarrel = {
  icon_mipmaps = 4,
  icon_size = 64,
  icons = {
    {
      icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
      icon_mipmaps = 4,
      icon_size = 32 -- was 64
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-side-mask.png",
      icon_mipmaps = 4,
      icon_size = 32, -- was 64
      tint = {
        a = 0.75,
        b = 0.6,
        g = 0.34,
        r = 0.7 -- was 0.0
      }
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-hoop-top-mask.png",
      icon_mipmaps = 4,
      icon_size = 32, -- was 64
      tint = {
        a = 0.75,
        b = 0.7,
        g = 0.7,
        r = 0.7 -- was 0.0
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
  order = "b[steam-barrel]",
  stack_size = 10,
  subgroup = "fill-barrel",
  type = "item"
}

-- FILL STEAM BARREL RECIPE --

local fillSteamRecipe = {
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
      icon_size = 32 -- was 64
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-fill-side-mask.png",
      icon_mipmaps = 4,
      icon_size = 32, -- was 64
      tint = {
        a = 0.75,
        b = 0.6,
        g = 0.34,
        r = 0.7 -- was 0.0
      }
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-fill-top-mask.png",
      icon_mipmaps = 4,
      icon_size = 32, -- was 64
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
      icon_size = 32, -- was 64
      scale = 0.5,    -- was 0.25
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
  order = "b[fill-steam-barrel]",
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

local emptySteamRecipe = {
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
      icon_size = 32 -- was 64
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-empty-side-mask.png",
      icon_mipmaps = 4,
      icon_size = 32, -- was 64
      tint = {
        a = 0.75,
        b = 0.6,
        g = 0.34,
        r = 0.7 -- was 0.0
      }
    },
    {
      icon = "__base__/graphics/icons/fluid/barreling/barrel-empty-top-mask.png",
      icon_mipmaps = 4,
      icon_size = 32, -- was 64
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
      icon_size = 32, -- was 64
      scale = 0.5,    -- was 0.25
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
  order = "c[empty-steam-barrel]",
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

-- SUPER-HEATED NUCLEAR VARIANT --

local superSteamBarrel = table.deepcopy(steamBarrel)
superSteamBarrel.name = "super-steam-barrel"
superSteamBarrel.order = "b[super-steam-barrel]"
superSteamBarrel.localised_name[2][1] = "fluid-name.super-steam"
superSteamBarrel.icons[2].tint.r = 1.0
superSteamBarrel.icons[3].tint.r = 1.0

local fillSuperSteamRecipe = table.deepcopy(fillSteamRecipe)
fillSuperSteamRecipe.name = "fill-super-steam-barrel"
fillSuperSteamRecipe.order = "b[fill-super-steam-barrel]"
fillSuperSteamRecipe.localised_name[2][1] = "fluid-name.super-steam"
fillSuperSteamRecipe.icons[2].tint.r = 1.0
fillSuperSteamRecipe.ingredients[1].minimum_temperature = 500.0
fillSuperSteamRecipe.results[1].name = "super-steam-barrel"

local emptySuperSteamRecipe = table.deepcopy(emptySteamRecipe)
emptySuperSteamRecipe.name = "empty-super-steam-barrel"
emptySuperSteamRecipe.order = "c[empty-super-steam-barrel]"
emptySuperSteamRecipe.localised_name[2][1] = "fluid-name.super-steam"
emptySuperSteamRecipe.icons[2].tint.r = 1.0
emptySuperSteamRecipe.ingredients[1].name = "super-steam-barrel"
emptySuperSteamRecipe.results[1].temperature = 500.0

-- TECHNOLOGY --

table.insert(data.raw.technology["fluid-handling"].effects, {type = "unlock-recipe", recipe = "fill-steam-barrel"})
table.insert(data.raw.technology["fluid-handling"].effects, {type = "unlock-recipe", recipe = "empty-steam-barrel"})
table.insert(data.raw.technology["nuclear-power"].effects,  {type = "unlock-recipe", recipe = "fill-super-steam-barrel"})
table.insert(data.raw.technology["nuclear-power"].effects,  {type = "unlock-recipe", recipe = "empty-super-steam-barrel"})

-- EXTEND --

data:extend{
  steamBarrel,
  fillSteamRecipe,
  emptySteamRecipe,
  superSteamBarrel,
  fillSuperSteamRecipe,
  emptySuperSteamRecipe,
}
