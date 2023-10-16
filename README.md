# TFC Faction Invite

TFC Faction Invite is a script for FiveM that allows players to invite other players to their faction or gang. It includes a UI for sending and accepting invites, as well as commands for testing purposes.

## Installation

To install TFC Faction Invite, follow these steps:

1. Download the latest release from the [GitHub repository](https://github.com/yourusername/tfc-factioninvite/releases).
2. Extract the contents of the ZIP file to your FiveM server's resources folder.
3. Add `start tfc-factioninvite` to your server.cfg file.
4. Restart your FiveM server.

## Usage

To use TFC Faction Invite, follow these steps:

1. Use the `/invite` command to invite a player to your faction or gang. The command takes two arguments: the player ID and the job name. For example: `/invite 2 police`.
2. The invited player will receive a notification with the option to accept or decline the invite.
3. Use the `/acceptinvite` command to accept an invite. The command takes one argument: the job name. For example: `/acceptinvite police`.
4. Use the `/declineinvite` command to decline an invite. For example: `/declineinvite`.

## Configuration

TFC Faction Invite can be configured by editing the `config.lua` file. The file includes the following options:

```lua
Config = {
    inviteDuration = 60, -- The duration (in seconds) that an invite will remain active before expiring.
    inviteCooldown = 30, -- The cooldown (in seconds) between sending invites.
    inviteDistance = 10 -- The maximum distance (in meters) that a player can be from the invite sender to receive an invite.
}