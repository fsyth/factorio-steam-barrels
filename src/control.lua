-- Unlock recipes if mod was installed after technology was researched
script.on_configuration_changed(function(e)
  for _, force in pairs(game.forces) do
    -- REGULAR STEAM BARREL
    local hasFluidHandling = force.technologies["fluid-handling"].researched
    force.recipes["fill-steam-barrel"].enabled  = hasFluidHandling
    force.recipes["empty-steam-barrel"].enabled = hasFluidHandling
    
    -- SUPERHEATED NUCLEAR STEAM BARREL
    local hasNuclearPower = force.technologies["nuclear-power"].researched
    force.recipes["fill-super-steam-barrel"].enabled  = hasNuclearPower
    force.recipes["empty-super-steam-barrel"].enabled = hasNuclearPower

    -- UNINSULATED AMBIENT STEAM BARREL
    local hasAmbientBarrels = settings.startup["enable-ambient-steam-barrel"].value and hasFluidHandling
    force.recipes["fill-ambient-steam-barrel"].enabled  = hasAmbientBarrels
    force.recipes["empty-ambient-steam-barrel"].enabled = hasAmbientBarrels
  end
end)
