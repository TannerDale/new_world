# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Weaponstyle.destroy_all
Weapontype.destroy_all

one_handed = Weaponstyle.create(name: "One Handed")
two_handed = Weaponstyle.create(name: "Two Handed")
ranged = Weaponstyle.create(name: "Ranged")
magic = Weaponstyle.create(name: "Magic")

one_handed.weapontypes.create!(name: "Sword and Shield", description: "A pairing of melee focused weapons that, when combined, offer solid offensive and defensive capabilities.")
one_handed.weapontypes.create!(name: "Rapier", description: "A speed orientated melee weapon with a variety of quick lunge attacks.")
one_handed.weapontypes.create!(name: "Hatchet", description: "A diverse weapon that allows for ranged throwing attacks or rapid close quarters attacks.")

two_handed.weapontypes.create!(name: "Spear", description: "A melee weapon that utilizes its long reach for aggressive thrusting attacks.")
two_handed.weapontypes.create!(name: "Great Axe", description: "A large melee weapin with wide-arcing swings and powerful chopping attacks.")
two_handed.weapontypes.create!(name: "War Hammer", description: "A mighty combat hammer that can cause the earth to quake with its crushing strikes.")

ranged.weapontypes.create!(name: "Bow", description: "A versatile ranged weapon that can rapidly fire arrows or be fully drawn to achieve maximum damage.")
ranged.weapontypes.create!(name: "Musket", description: "A ranged weapon that fires high damage cartridges.")

magic.weapontypes.create!(name: "Fire Staff", description: "A magical staff that consumes Mana to ignite the blazing power of Fire spells.")
magic.weapontypes.create!(name: "Life Staff", description: "A magical staff that consumes Mana to apply the restoritive power of Nature spells.")
magic.weapontypes.create!(name: "Ice Gauntlet", description: "Gauntlet that consumes Mana to summon the freezing powers of Ice spells.")
