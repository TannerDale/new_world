# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Attr.destroy_all
Weapontype.destroy_all
Weaponstyle.destroy_all


strength = Attr.create(name: "Strength", description: "Strength governs your power with some melee weapons. Heavy melee weapons, such as the War Hammer, scale their damage exclusively on Strength, while lighter melee weapons like the Sword scale their damage primarily on Strength, but also slightly on Dexterity.")
dexterity = Attr.create(name: "Dexterity", description: "Dexterity governs your effectiveness with ranged weapons as well as some melee weapons. Bows and Muskets both grow in power as your character’s Dexterity increases.")
intel = Attr.create(name: "Intelligence", description: "Intelligence governs your power with magical weapons, including any magical Perks your weapons might have. Both purely magical weapons like the Fire Staff and physical weapons with a Magical Perk (such as the Ignited perk) grow in power based on your Intelligence Attr.")
focus = Attr.create(name: "Focus", description: "Focus governs your Mana recovery rate and is also the Attr that governs the effectiveness of the Life Staff. Higher Focus not only means that you can cast more spells more regularly but your ability to use the Life Staff is increased.")
constitution  = Attr.create(name: "Constitution", description: "Constitution governs your overall Health pool. The higher your Constitution, the more damage you can sustain before succumbing to your injuries.")


one_handed = Weaponstyle.create(name: "One Handed")
two_handed = Weaponstyle.create(name: "Two Handed")
ranged = Weaponstyle.create(name: "Ranged")
magic = Weaponstyle.create(name: "Magic")

s_s = Weapontype.create(name: "Sword and Shield", description: "A pairing of melee focused weapons that, when combined, offer solid offensive and defensive capabilities.", weaponstyle_id: one_handed.id)
rapier = Weapontype.create(name: "Rapier", description: "A speed orientated melee weapon with a variety of quick lunge attacks.", weaponstyle_id: one_handed.id)
hatchet = Weapontype.create(name: "Hatchet", description: "A diverse weapon that allows for ranged throwing attacks or rapid close quarters attacks.", weaponstyle_id: one_handed.id)

spear = Weapontype.create(name: "Spear", description: "A melee weapon that utilizes its long reach for aggressive thrusting attacks.", weaponstyle_id: two_handed.id)
g_axe = Weapontype.create(name: "Great Axe", description: "A large melee weapin with wide-arcing swings and powerful chopping attacks.", weaponstyle_id: two_handed.id)
w_ham = Weapontype.create(name: "War Hammer", description: "A mighty combat hammer that can cause the earth to quake with its crushing strikes.", weaponstyle_id: two_handed.id)

bow = Weapontype.create(name: "Bow", description: "A versatile ranged weapon that can rapidly fire arrows or be fully drawn to achieve maximum damage.", weaponstyle_id: ranged.id)
musket = Weapontype.create(name: "Musket", description: "A ranged weapon that fires high damage cartridges.", weaponstyle_id: ranged.id)

f_staff = Weapontype.create(name: "Fire Staff", description: "A magical staff that consumes Mana to ignite the blazing power of Fire spells.", weaponstyle_id: magic.id)
l_staff = Weapontype.create(name: "Life Staff", description: "A magical staff that consumes Mana to apply the restoritive power of Nature spells.", weaponstyle_id: magic.id)
i_gaunt = Weapontype.create(name: "Ice Gauntlet", description: "Gauntlet that consumes Mana to summon the freezing powers of Ice spells.", weaponstyle_id: magic.id)
