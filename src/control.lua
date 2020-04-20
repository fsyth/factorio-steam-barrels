-- Unlock recipes if mod was installed after technology was researched
script.on_configuration_changed(function(e)
  for _, force in pairs(game.forces) do
    -- REGULAR STEAM BARREL
    local hasFluidHandling = force.technologies["fluid-handling"].researched
    force.recipes["fill-steam-barrel-165"].enabled  = hasFluidHandling
    force.recipes["empty-steam-barrel-165"].enabled = hasFluidHandling
    
    -- SUPERHEATED NUCLEAR STEAM BARREL
    local hasNuclearPower = force.technologies["nuclear-power"].researched
    force.recipes["fill-steam-barrel-500"].enabled  = hasNuclearPower
    force.recipes["empty-steam-barrel-500"].enabled = hasNuclearPower

    -- UNINSULATED AMBIENT STEAM BARREL
    local hasAmbientBarrels = settings.startup["enable-ambient-steam-barrel"].value and hasFluidHandling
    force.recipes["fill-steam-barrel-015"].enabled  = hasAmbientBarrels
    force.recipes["empty-steam-barrel-015"].enabled = hasAmbientBarrels
  end
end)
