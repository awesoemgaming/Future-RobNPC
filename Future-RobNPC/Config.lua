Config = {}

Config.framework = 'qbcore' -- what framework are you using? 'qbcore', 'esx', 'standalone', or 'vrp'

Config.minamount = 0 -- the minimum amount of money you can get for robbing the npc (leave at zeror for a chance to not get anything. More realistic)

Config.maxamount = 250 -- the maximum amount of money you can get for robbing an npc

Config.cooldown = 30000 -- how long the cooldown is between robbing NPCs. in milisecconds, so 30000 = 30 secconds

Config.nomoneymsg = "This guy had no cash on him." -- notification that displays if the NPC had no money on him. (ONLY IF Config.minamount = 0)
