# FiveM NPC Robbery Script
This is a FiveM script that allows players to rob NPCs at gunpoint by aiming a gun at them. The script supports multiple frameworks such as qbcore, ESX, standalone, and vRP.

# Installation
To use this script, follow the installation steps below:

1. download the Future-RobNPC folder.
2. Place the folder in your FiveM resource directory.
3. add `ensure Future-RobNPC` to your `server.cfg`

# Usage
To rob an NPC, follow these steps:

1. Aim your gun at an NPC and keep it pointed at them.
2. After a few seconds, the NPC will raise their hands in surrender.
3. A notification will appear indicating the amount of money you have robbed from the NPC.
4. There is a configurable cooldown period between robberies.

# Configuration
The script provides a configuration file (Config.lua) where you can adjust various settings:

Config.framework: Set the framework you are using (qbcore, esx, standalone, or vrp).

Config.minamount: Set the minimum amount of money you can get from robbing an NPC (set to zero for a chance to get nothing).

Config.maxamount: Set the maximum amount of money you can get from robbing an NPC.

Config.cooldown: Set the cooldown period between robberies in milliseconds.

Config.nomoneymsg: Set the notification message to display when the NPC has no money (only applicable if Config.minamount is set to zero).

# Credits
Author: Awesome Gaming

License: This script is released under the MIT License.
