forge.clear()

bladeHeight = math.random(6, 14) / 10;
bladeWidth = math.random(7, 9) /10;
guardHeight = 0.1;
hiltHeight = 0.1;

if math.random(0, 2) == 1 then

    blades = { 
        "Swords/blade", 
        "Swords/blade_bend", 
        "Swords/blade_broken", 
        "Swords/blade_dagger", 
        "Swords/blade_dual",
        "Swords/blade_skew",
        "Swords/blade_skrimitar",
        "Swords/blade_rounded"
    }
    
    blade = blades[math.random(#blades)];
    
    forge.build(blade, {0, 0, 0}, {0, 0, 0}, {bladeWidth, bladeHeight, 1})

else 

    mixedBladeMiddles = { 
        "Swords/blade_dual_middle",
        "Swords/blade_middle",
        "Swords/blade_middle_broken",
    }
    
    mixedBladeTops = { 
        "Swords/blade_dual_top",
        "Swords/blade_top_broken"
    }

    mixedBladeMiddle = mixedBladeMiddles[math.random(#mixedBladeMiddles)];
    mixedBladeTop = mixedBladeTops[math.random(#mixedBladeTops)];

    forge.build(mixedBladeMiddle, {0, 0, 0}, {0, 0, 0}, {bladeWidth, bladeHeight, 1})
    forge.build(mixedBladeTop, {0, bladeHeight, 0}, {0, 0, 0}, {bladeWidth, bladeHeight/3, 1})

end

guards = { 
    "Swords/guard", 
    "Swords/guard_detailed", 
    "Swords/guard_round", 
    "Swords/guard_slant", 
    "Swords/guard_slant_cross",
    "Swords/guard_up"
}

guard = guards[math.random(#guards)];

forge.build(guard, {0, -guardHeight, 0}, {0, 0, 0}, {1, 1, 1})

hilts = { 
    "Swords/hilt", 
    "Swords/hilt_handle", 
    "Swords/hilt_handle_guard", 
    "Swords/hilt_handle_heavy", 
    "Swords/hilt_long",
    "Swords/hilt_long_wide",
    "Swords/hilt_smooth"
}

hilt = hilts[math.random(#hilts)];

forge.build(hilt, {0, -2*(hiltHeight+guardHeight)-guardHeight, 0}, {0, 0, 0})



