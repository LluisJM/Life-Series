This is my custom version of the 3rd Life series and the Last Life series by Grian. This is NOT a one-to-one recreation, but rather a fusion of both series. 
# Rules
These explanations have been adapted from the [Life Series Wiki](https://the-life-series.fandom.com/wiki/3rd_Life#Rules).
## The Life System
- Each player starts with three lives. Their name is green and they cannot kill other players unless in self-defence.
- If a player dies, they lose a life. Their name becomes yellow, and the same rules apply.
- When a player reaches their final life, their name becomes red, and they will become hostile to other players. All alliances are severed when you reach your Last Life.
- Red names get a temporary buff to absorption, regeneration and fire resistance after performing a kill.
## The Boogeyman
- This is one or more players chosen at the beginning of each session.
- The server does not reveal who the Boogeyman is except to the Boogeyman him/herself.
- They become hostile and have to kill 1 green or yellow person to be cured.
- If not cured by the end of the session, they get put down to 1 life for the next session.
- The Boogeyman also gets a temporary buff to absorption, regeneration and fire resistance after performing the kill.
# Features
- Some crafting recipes have been changed or added:
  - TNT is now crafted with 4 paper and 1 gunpowder instead of 5 gunpowder.
  - Name tags are now craftable with paper and string.
  - Saddles are now craftable with 3 leather.
- There are custom sounds for the Boogeyman being chosen. To avoid the use of a resource pack, these sounds are vanilla. 
- The Boogeyman is automatically cured if he/she reaches his/her Last Life, or when there are no other green or yellow names.
# Administrator/OP Commands
This data pack requires of an administrator to run the following commands to trigger different events.
The data pack MUST be setup with the following command:
```
/function life:setup
```
The session must be manually started using the following command:
```
/function life:start_session
```
The Boogeyman must be manually chosen using the following command:
```
/function life:choose_boogeyman
```
The Boogeyman can be manually cured using the following command:
```
/execute as <PLAYER NAME GOES HERE> run function life:cure_boogeyman
```
The session MUST be stopped before any player leaves to avoid bugs using the following command:
```
/function life:end_session
```
Other functions are run automatically and are not supposed to be run by a player.
# Bug report and feature suggestion
You can report bugs and suggest features in the [GitHub repository](https://github.com/LluisCrafter/Life-Series/issues).
